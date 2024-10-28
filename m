Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B131D5B846
	for <linux-phy@archiver.kernel.org>; Mon, 28 Oct 2024 22:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MASDOdREX+/1e/O3R+z21L7ywElRJrl3APg436tFnRc=; b=2KMZTAN5KkEkNt
	LPjYxdd5g9QiSbw1pb5svyrWcySWKqqqz+mSziC0dmg4FF9djOM1oJziRahIvFQCi6eDJjTpFIs4b
	EtUm9UADw2WGHmABX3a6AEpuzzaKC9248LOrOB1SIoseRULClIXGzP4aTyz6wQz2OIuCi+6EUmx9c
	6Sg7le+2XNOEuOAAPubtZln8KvR7aFbr7RdLCcsQZ++HyHxY9jeyTDO8j5zsNxG02WZibRz/u17OD
	mnTCm+cYT87+RMTULa4mWxjk8hzIUJwWPtpUNMzinZh3om4lBi/5MUsxoOOpKkAmZBgpo5zfzkisZ
	dOfLKYzG7Q5ZbhPCl3Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5YJr-0000000CWwd-04rP;
	Mon, 28 Oct 2024 22:34:39 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5YJn-0000000CWvO-2N0Q
	for linux-phy@lists.infradead.org;
	Mon, 28 Oct 2024 22:34:36 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-431688d5127so47156455e9.0
        for <linux-phy@lists.infradead.org>; Mon, 28 Oct 2024 15:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730154873; x=1730759673; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pdlBwck4NxNHB4pJHNKMUo69aUJHsObvwbILTbB7MwQ=;
        b=Jay274QzpmCnTWROI1KgKywMZT+GEtf5fcRCS0MrhQGYeF+muIqv1bEt3qM6ZrNyb6
         hZ94/0NzCFzrNyXZhIcvwJ6GGGU+3y2nLY8y0qjz3bfpJsmIWXBUw+exioH3qaQLO5Ps
         +vrwwtnM1TMisMBtzUeT0jpbbhRkrfgkrAvqryZmAZAx5a41SZBtfN2cvE8Isj9XQZHp
         oIiPXTuvl4pIemfvmxNmZsoTZa3I9i488okH1mCXw9+s+4D8qv37ReNMUO3+prbidFpH
         EWLCNMZKtnGNP8MGCG03FouMOaiEc4xxQO5i5EHAPqrxhbk18SxYy6ecIS/nZVsra0wK
         xqfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730154873; x=1730759673;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pdlBwck4NxNHB4pJHNKMUo69aUJHsObvwbILTbB7MwQ=;
        b=skCFhTI09a3Ct0MoTpz4mJ5IljhI58Dlpm5CemF1R1pzdITE8gqkJnysnorZidT/vv
         +SiiVlLaO10tiwPHtoBVkhVx2yckdgFopehHeSHoOkWu9stS9zuxYajqfonQW1Bh4DBi
         gjEu9GJxQaUZQynGG/U9Iab1NAbmJdmoQn7ic8uh5xTwU5AE7uKkj7XzptqJ7PDf3VDR
         uVFWiZ2fm6WvmE1Rc9nLYUayyUyRO8u4WqGojVYFxPx8qMWmIuOnXkoNwJbeTPTk1Vu9
         Oojs7BMAJ8QhWbllJ7TLgRKaVNYTqaMtOke4TE6I37PF5QUNuzMHvWqsrwXqmUEyjIaE
         021A==
X-Forwarded-Encrypted: i=1; AJvYcCUMk+2/YNFe2DCzadewRxUTPq5OnKkrPRqMdQ5ozVk56Xc+MlqlomJX7bF3ogOS7xUTZV70oNeGXyg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6WrL8FZUveLUmWv5XXY/fLLaGdpWHx3STR1LFtuDcNBGuppro
	H9oFQn5emSnasrssznCK8OGgwRYcRjm1lefFXwobQ4PlGrck8gXX
X-Google-Smtp-Source: AGHT+IFBiVXTrjD7ImDUCo/xWaGFnVYKS4h7WGj2F2MDCfqbPayAEVeJNVnFEvFnyih3B4YMtk5w7g==
X-Received: by 2002:a05:600c:5249:b0:431:6052:48c3 with SMTP id 5b1f17b1804b1-4319acacd6amr104870245e9.16.1730154872857;
        Mon, 28 Oct 2024 15:34:32 -0700 (PDT)
Received: from [127.0.1.1] (2a02-8389-41cf-e200-b273-88b2-f83b-5936.cable.dynamic.v6.surfer.at. [2a02:8389:41cf:e200:b273:88b2:f83b:5936])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431935f7213sm123899495e9.32.2024.10.28.15.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 15:34:32 -0700 (PDT)
From: Javier Carrasco <javier.carrasco.cruz@gmail.com>
Subject: [PATCH 0/2] phy: tegra: xusb: fix device(_node) release in
 tegra210_xusb_padctl_probe
Date: Mon, 28 Oct 2024 23:33:57 +0100
Message-Id: <20241028-phy-tegra-xusb-tegra210-put_device-v1-0-28f74368c9ba@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFURIGcC/yWNQQ5AMBAAvyJ7tklbDeIrIlJs2QtNixDp3zXcZ
 i4zDwTyTAGa7AFPJwfe1iQyz2BczDoT8pQclFBaClWjW27cafYGryMMPyop0B17P6XASGhtZag
 qtSgGDSnkPFm+vknbxfgCbCfWQnQAAAA=
To: JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>
Cc: Thierry Reding <treding@nvidia.com>, linux-phy@lists.infradead.org, 
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Javier Carrasco <javier.carrasco.cruz@gmail.com>, stable@vger.kernel.org
X-Mailer: b4 0.14-dev
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730154870; l=1477;
 i=javier.carrasco.cruz@gmail.com; s=20240312; h=from:subject:message-id;
 bh=NS6IGLdfQ4yhfa/h3qM/ZC4AMFpa5EbB0lv5pgr/TGE=;
 b=BFOEYf0/XRn4Fi3Hhd0BIlIOkJuXsBUVt0jzg+51/ufPqypE/ActPCsKkORjVzpbblCVAMNv2
 i1eY0ZE4jD3BxAIBPbNzR1O1YTYlFOegmbh+JEke7fTeqDPwWtx879Y
X-Developer-Key: i=javier.carrasco.cruz@gmail.com; a=ed25519;
 pk=lzSIvIzMz0JhJrzLXI0HAdPwsNPSSmEn6RbS+PTS9aQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_153435_692530_4336AD00 
X-CRM114-Status: GOOD (  10.41  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This series fixes two similar issues in tegra_210_xusb_padctl_probe().

Two resources (device_node *np and the device within struct
platform_device *pdev) are acquired, but never released after they are
no longer needed. To avoid leaking such resources, calls to
of_node_put() and put_device() must be added.

In this case, the resources are not assigned anywhere in the probe
function, and they must be released in the error and success paths. If
I overlooked any assignment, please report it as an error.

I have tried to affect the existing code and execution paths as less as
possible by releasing the device and device_node as soon as possible,
but if goto jumps to labels for the cleanup are desired, I can go for
that approach instead.

This series has been compiled successfully, but not tested on real
hardware as I don't have access to it. Any validation with the affected
hardware is always welcome.

Signed-off-by: Javier Carrasco <javier.carrasco.cruz@gmail.com>
---
Javier Carrasco (2):
      phy: tegra: xusb: fix device release in tegra210_xusb_padctl_probe
      phy: tegra: xusb: fix device node release in tegra210_xusb_padctl_probe

 drivers/phy/tegra/xusb-tegra210.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)
---
base-commit: dec9255a128e19c5fcc3bdb18175d78094cc624d
change-id: 20241028-phy-tegra-xusb-tegra210-put_device-ff7ae76403b4

Best regards,
-- 
Javier Carrasco <javier.carrasco.cruz@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
