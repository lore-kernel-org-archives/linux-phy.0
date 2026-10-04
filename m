Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1B9BCA5FCE
	for <linux-phy@archiver.kernel.org>; Sun,  4 Oct 2026 09:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z2Zh3JjYEQCLNTkJtnZ4fu1cIhnx19G+NVxTRrPLd6A=; b=GQ+X4rMU0bmryU
	tmoeZpCcAco6PwxCQEi1OSxub0LtMsFm+E3TtwgYDpEk3p0z1kjSui7E1T/WjDq6trOOJfrw5wSNf
	FUdgm8hxCBazPKZxCq571nLuCAato8kUEVKXIyRFV+LDL2ZIvNAUZSFf2+QrjrFu9N8B9YfLvpn2e
	4u2jplw30mlaKXbgYfWAU9FLJHTM9743ucT10hMV3IyGcNQQDPgLfApnGPqdEZ+p4rmyIq/N7PjGm
	u3SalOevR450bh9dJIF4y00rZ5CFpJtTulAqxy5npOxj6c5WKLXJTWM6/LU1QEkoqz3Z65+joz5mp
	VaP6Spzs0uzAmhx40M4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDIcS-0000000Ecad-1bn4;
	Sun, 04 Oct 2026 09:34:56 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDIcP-0000000EcaJ-1YPf
	for linux-phy@lists.infradead.org;
	Sun, 04 Oct 2026 09:34:54 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-885cd98d226so83816b3a.1
        for <linux-phy@lists.infradead.org>; Sun, 04 Oct 2026 02:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791106492; x=1791711292; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xMFsAlTkgLQleDkb6BgHggPAQsd5lT/CEjafnTCRCdw=;
        b=d4TLZnD2ZzG8tZRtwS4WZdb1RWb9baxRLEGMRQBWenmslgnLKMpXyohztTF4BgniJn
         i/Nq0gT7s09rFHhHnXTf14eNNn9lEVC9jT6PxEFupB/0Hsqum7OTBHqFXci3fVkx5LFa
         cMJiiAkEfVWRRRkKlE+sYGWRBDWcHr0XkTAwF183OvKVAsnxX0dnx7ZMkMoPSlqV1fo0
         a0w4qJns/BRyHWUtYelGV96j/G2CY0hI52hx2L8H1w3kUURwLvx+nWjIm9x5LbVz8rEY
         PbzEz0XqzuhSZ6jQsZfshht0alnno1/SoPzSMQGDK8EYXRfTtNPKcGm9eyj9b8WgqJ3L
         oSQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791106492; x=1791711292;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=xMFsAlTkgLQleDkb6BgHggPAQsd5lT/CEjafnTCRCdw=;
        b=Es1GP78sSTWa1BXeKB4E1vyqmsz6i89cKnFmp13bpmyyarusUvS2N34G2RR9+yvLzv
         MGf987/aPdvoRSxMsBY92Dj8BdUuK5d9bK4vORQoUOqAegjZ5IoUw36ff8dVe83io1ef
         V9GjcWaaGH9RqyAliiwBeNXEdE6PXElEeY4++ebTfw0epe1HMm5yGxdIIhiALA8OnJ7w
         huLEK64LocnOYjUBVOGzIom0NTmw8TGLrVnPxp9HVX3KkOMY7vAwuKJv8qTLnQs3Mwqo
         zoBu5s3abplU0BvVQ/qKaBuveeY0BQMit565ycICP+dCj/sGx3guGvInmLb5NjQw29cN
         wcNw==
X-Forwarded-Encrypted: i=1; AKwUvBzBc45sxz/TfQEt3R9jonHe6bSy+OgvZlnXOnM/xM6QLjBD4rREONdCdhkuzyD0opazExn151va2o8=@lists.infradead.org
X-Gm-Message-State: AFuF++lgzpkcVj9S6xVO5ZiiaVcSNzvd5iBDWdRt+wiw4nA/FWpji0iB
	XWF83/Y42ldWcZvv1Hz80MNhOfb+rWp1Xry6BQXbwEMU5k4ySAA+G5OG
X-Gm-Gg: AYBFou0WEnpEGjrOgT0KDMSMHCabWG3ZiKUENWoaMkrY4yhqxhHrcVlb/OYBA3tIZ/E
	jDp7X3rvQdDJwAS8nR7NNx0cbUQF5THUme4SyYOhetO2MVlRi+N89CLnUtKEA6qW5CoWQ36NcO+
	x3B62HcNgkwx8WYem3VNWU6OzSDmLw+hkiWqoLXj9ivg7bmKBb3o/1YACqqadeKrYR46u6iuzES
	fJhbC625sX0dfV/sLyjrB9EfVc3QYl8iP0Rt+HdJpJO+j+cpXreOatRoAYqllxtqVyo3jZOSXt7
	MEwQsMF2hdzz1JvaCebIzw/VJxaMNELGJdu6SDv3yAHQwX5Iv5ZlaSc8YxMVPB607UOA/tfO0fi
	ES4qJjZtpu/7BPyTVwv6eda4tRhGs93b1B+36ky50Gr0BuR3uOxT7tESquRsT1wX8O/7RHWTvpS
	FPeaZmhd8EY5ZjQZZbU/mU/brwn3Hba44gbxrgFIODBRW0RYuFeLpfzhlEuyJpl3Bna0zX2ajTf
	46CyRlzSa5aTg==
X-Received: by 2002:a05:6a00:2d92:b0:882:4cdd:140e with SMTP id d2e1a72fcca58-887fd634a7fmr6960101b3a.15.1791106491984;
        Sun, 04 Oct 2026 02:34:51 -0700 (PDT)
Received: from DESKTOP-NM9EKIA ([125.134.240.130])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-88d62aaf2f8sm620337b3a.10.2026.10.04.02.34.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Oct 2026 02:34:51 -0700 (PDT)
From: Joonhoe Kim <26rote@gmail.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Joonhoe Kim <26rote@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v8 0/5] Modify interrupt handling for eUSB2 Phy targets
Date: Sun,  4 Oct 2026 18:34:49 +0900
Message-ID: <20261004093449.74244-1-26rote@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.5
In-Reply-To: <20260913-eusb2-interrupt-v8-v8-0-0f505b9c394b@oss.qualcomm.com>
References: <20260913-eusb2-interrupt-v8-v8-0-0f505b9c394b@oss.qualcomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261004_023453_425017_20C59E9B 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
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

On Sun, Sep 13, 2026 at 08:10:43PM +0530, Krishna Kurapati wrote:
> Changes pushed on top of usb-next branch. And v8 is only compile tested.

I ran v8 on a Lenovo Legion Tab Y700 Gen 5 (Kaanapali, M31 eUSB2 PHY),
v7.3-rc4 plus board patches. Host mode, wakeup enabled, s2idle:

 - hub with a FS keyboard behind it: no early wakeup in 10 RTC-timed
   cycles, and a key press wakes the system (dm_hs_phy_irq). Without
   the series it woke up right after entering suspend (dp_hs_phy_irq).
 - FS keyboard directly on the port: a key press wakes the system.
 - unplugging the hub during suspend wakes the system.
 - wakeup disabled: no change from before.
 - low speed: not tested, I have no LS device.

Only the m31 and dwc3-qcom parts were exercised; the snps-eusb2 change
was only built.

Tested-by: Joonhoe Kim <26rote@gmail.com> # Lenovo Legion Tab Y700 Gen 5 (Kaanapali, M31 eUSB2 PHY)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
