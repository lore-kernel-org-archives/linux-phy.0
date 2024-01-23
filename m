Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B887AC47258
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jan 2024 16:09:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FDrpYymSL2F0JhoQ+x6OSBlUP3oPEgM29mHHHCXIGPU=; b=LO1/LyTBkpEQ8J
	AjwUZ+YEd0e6INNw2z62bN23Gr7EdO2/csnzOdfSV7xgCpsr4aT2mhROakKDBPyfNS7h7tyNhpcKi
	VAvCTnajyMvi9RE8rrJtRp1chlhoMoY5f3v9zDL/J6syULfH9vpwDSRBZEkU25ZELEjSBOyLsVcOL
	F9d8cpaclvNTrbTgjlx2+1QWtqE8nXTF4zQJJzfoadsnpspnRsXnVESNHCHuKBvoJexJmittnRgq9
	07+Zzpn1K66+ADhQLQbdcEhOsl9LtiA9JFSW9rXTo8R5dMB93cGhPa/uMpRkGNsFsPikmqhuEq0UX
	rZgKjdfB7D1SQU+QU21A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSJLE-00HDbK-0y;
	Tue, 23 Jan 2024 16:09:36 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSJLC-00HDaQ-0E
	for linux-phy@lists.infradead.org;
	Tue, 23 Jan 2024 16:09:35 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-50edf4f478eso5970244e87.3
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 08:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=8devices.com; s=8devices; t=1706026171; x=1706630971; darn=lists.infradead.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=il2ElxRNzWyOW/OqtXsEs39fOt6ojB/hy8eo1dob0o0=;
        b=CcFSIYygNJQoPeIdc7ygbP6Gp/TR60dKoHmnQCL+xYxq56V8qQ0nsIYtdD6oKLzjRe
         ZspYyXNqmvGhJs6e5J7OX7eLBUo2S7K27GpPQYwKuhCky3Kdd98oFdt4wxhL8HbHFzSO
         ovux/IieaYoMYe7ObcXth9N+d/PhRnQL12JQDc+fP++VkRCiTfn374BZYL59qlIviDqj
         OoSxR6kV6zadgiM1qqUnEZHTG7M4TlKc+GpF33SMJWHQ0HreO+i9StwUBp2gU4AXNqz9
         6M3BBt8ZR5UkmF/7BTEfmg1TuVga/s6rFBGJAjL3imJH2kzWC4vv118x94+IwLvhkUGB
         /TSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706026171; x=1706630971;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=il2ElxRNzWyOW/OqtXsEs39fOt6ojB/hy8eo1dob0o0=;
        b=eRvc797MfMSZEM7bLburyI6nRwGazTV5kfHIhvRqY+C02N5csHXYl7cQWqP4wbO8gW
         Q0XASK7QTI/qS3fHHtw1HF/EEEk81cRUeOqrsWY9+nfgssoojTe15gwP5jLKtBJcd/ex
         uDvgGrSyavu1VDsJBiEE5oWI2OEDepVhqo4C7BUU3666iCTS05uwnCR8rNci9sy21kg1
         JnsXjLqjwp4Mzz9JGYZCVrp1Gt8TsHE5jwOZJRyZKphBnycBKVpqvC6MKpqCtyRlLuSh
         9e3xbCNueoRe6DMkkDeAyYJaMbVPTj6GTpbsbHdF8r6Kw03b9hXAhWhs25RT2Ztaw0gG
         I+dQ==
X-Gm-Message-State: AOJu0YwctVvAatlZjsINiCCMF8p5wejp+jvnFRbwhrVGFSpH2rik33LG
	e278AejyloQ5NzNqoQAaOXHkuMcF4gPyAwdKKd3b52t0PfqR/om0R6HLr5J4IBw=
X-Google-Smtp-Source: AGHT+IHw6j71sfnQVGET6XZK2wZu1RpeQY7Ck7bikm4cGXee9ZDOihsHZrKm9SF45FbWWaz4ASBX1A==
X-Received: by 2002:a05:6512:2253:b0:50e:7a04:2229 with SMTP id i19-20020a056512225300b0050e7a042229mr2975733lfu.25.1706026171539;
        Tue, 23 Jan 2024 08:09:31 -0800 (PST)
Received: from mantas-MS-7994.8devices.com ([84.15.37.222])
        by smtp.gmail.com with ESMTPSA id q20-20020a0565123a9400b0050e7be886d9sm2336950lfu.56.2024.01.23.08.09.30
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jan 2024 08:09:30 -0800 (PST)
From: Mantas Pucka <mantas@8devices.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Mantas Pucka <mantas@8devices.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] phy: qcom-qmp-usb: fix ipq8074/ipq6018 USB issues
Date: Tue, 23 Jan 2024 18:09:18 +0200
Message-Id: <1706026160-17520-1-git-send-email-mantas@8devices.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_080934_106298_55C5BDFE 
X-CRM114-Status: UNSURE (   6.42  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Two issues were found in ipq8074/ipq6018 USB support. Sending as series,
because fixes touch the same code.

Mantas Pucka (2):
  phy: qcom-qmp-usb: fix register offsets for ipq8074/ipq6018
  phy: qcom-qmp-usb: fix serdes init sequence for IPQ6018

 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 30 ++++++++++++++++++++++++++++--
 1 file changed, 28 insertions(+), 2 deletions(-)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
