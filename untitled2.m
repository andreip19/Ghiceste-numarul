function ghiceste_numarul()
    % Generăm un număr aleator între 1 și 100
    numar_secret = randi([1, 100]);
    incercari = 0; % Contor pentru încercări
    ghicit = false;

    disp('Bine ai venit la jocul "Ghicește numărul"!');
    disp('Am ales un număr între 1 și 100. Încearcă să-l ghicești!');

    while ~ghicit
        % Citirea unei încercări de la utilizator
        incercare = input('Introdu numărul tău: ');

        % Validarea intrării
        if ~isnumeric(incercare) || incercare < 1 || incercare > 100
            disp('Te rog să introduci un număr valid între 1 și 100.');
            continue;
        end

        % Incrementăm numărul de încercări
        incercari = incercari + 1;

        % Verificăm dacă utilizatorul a ghicit
        if incercare == numar_secret
            disp(['Felicitări! Ai ghicit numărul în ' num2str(incercari) ' încercări.']);
            ghicit = true;
        elseif incercare < numar_secret
            disp('Prea mic! Încearcă un număr mai mare.');
        else
            disp('Prea mare! Încearcă un număr mai mic.');
        end
    end
end
