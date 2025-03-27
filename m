Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B169C36011
	for <linux-phy@archiver.kernel.org>; Thu, 27 Mar 2025 19:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=braqrWv8SfMVCN1QLp3NGouPQWShMyGfP4fQpI5ErbE=; b=ckWg0Emyz1Wv9J
	dMN8lJ8jX823QBLu4SMtVeMgBoJ9O+Zt3mzcC6Fvjo+hJ/H9T079YfIRgMMbYnVvolTt0Xjs1YhLN
	tQSovVUAdxBdcaXHF8jVr4+M921zUhVUxPOXhZBA8kI1kbw1G7+0T9h+ZYOINrdzCpHxPlTmguAID
	/pyL6V+UFqoT44RA6rwTEALmPmSQ/ShfQJ2Zr0HXR+iLZNXLR3DjMoyZC/XQ6ZujLVqe8YI2/odud
	KvkT4GE2FAHL7suyt1KZ0+08lcELsZlBu3+r48IwZkghWEE168M4PFzsk03Nry2NBw7Ck7NC7GZls
	FMkb+aJOawVKZc5U0D3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txsSU-0000000BmFI-1KGN;
	Thu, 27 Mar 2025 19:00:06 +0000
Received: from mail-oo1-xc2f.google.com ([2607:f8b0:4864:20::c2f])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txsP1-0000000Blmy-3Pcn
	for linux-phy@lists.infradead.org;
	Thu, 27 Mar 2025 18:56:33 +0000
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-601a8b6c133so1153086eaf.1
        for <linux-phy@lists.infradead.org>; Thu, 27 Mar 2025 11:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743101791; x=1743706591; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+s2Bk2jjEjtn0ANWrGki0cYBsYkeN6iSQygrdQRlBdU=;
        b=AZVMP9TEsEWrnDicsjyI8u43J5dALxd4iTTvo+3B1TDUDadiPyyGO+CBdThH6TdE3p
         ZXdRnsrDQrQKWo1N8ulrOQAWCwNMs+1hS4eMDc/loY6Vo6J3gWLgmksRC7ZB85lVokUP
         j8Xlo5WAvIpO/fvIsVm9wzjiRCwNABx8Zu4Q8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743101791; x=1743706591;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+s2Bk2jjEjtn0ANWrGki0cYBsYkeN6iSQygrdQRlBdU=;
        b=cifUFYL24mCfApgFQDLiv7UHDKbRVYoVSbOuJX3TV36D0GtdBt2ceCI8M4Rsnd3tSu
         kbneLEtB4t+XBZTQjjDE9SApkYgQWZwDa54jazwbBntlajfp9+3+CSF8duZAuDMnqV1J
         GAYzHaCYc0gsTWGrMqfKIeszph3qh5f6CJUtzSo9RM4ION6H7OK9kl/eBg6GAumWCahn
         lBY9Zxu4jhLy+KZ8i71LfIzsOUmNxkKlQ2N2pQ90sH3V+NMdUeaZG0Gd1K9qneWXtnpk
         5YnjoA7LQESo3r8xWkPR/9DKgxlz+CoUkK9UEnUfLMwU4iM65rux0DyapIeQC8eh0uDN
         nPxA==
X-Forwarded-Encrypted: i=1; AJvYcCULPtoHzdKSuqHVYodXytMpXYoHndU/VpZkRsAonEjRnAXKjHRm5gKu72PfM7dyuIDEKyxPIn+iP/g=@lists.infradead.org
X-Gm-Message-State: AOJu0YwcezFDr5jMpWPWAoxKQivWT+Szsi6P/s8SSmHswlnGGTAiw3X7
	NYoJksEKYcVPcToJMr63Y7FB/5rcJzWKxhYWlM5EYbRdzsmpGZFsNVj3IABo7g==
X-Gm-Gg: ASbGncuvZr52xvfdLgAWcE34KPRYFsuCB7gwY8HID0yb8mwfN4vnlGYbirhaV+ur5ZH
	SsVitEs6J41bSp/ocDfozDusDYG19KcBzJYm5432/z46R3x06VgxIXXRg9v5ZoGjhagtzjRL8x+
	iA0gwa3RVxnT6Z6a/Tv+/1GnoCZwSghfhSHDLIcIJwJ027WAQsVlYkDpRVCXbadknlIbu0D9MYO
	jkPy4OUuicYfzxIZtCUH9fDQAqlwzry+qrmHlqySg2yLG9AtT6l5wNieORAofKYibH0PLRzYbHF
	1Gxc/yJh2lGd9ZYTRk4jZH+nojMHQfeglPo39WO2suxzPFtHAe0dGdkRdjZvnlhcnlQTUZc4nzh
	S3j++EDdn6FulQpAfuvl1eA==
X-Google-Smtp-Source: AGHT+IEQeyF1ChzfQPByDWuHLCAdty2HiuEDVVEA5CMpBaviN7elicCmvvVu1wJZngtX0tBCNiGcdA==
X-Received: by 2002:a05:6870:ac2c:b0:2c4:1b1c:42c3 with SMTP id 586e51a60fabf-2c86626514emr1043383fac.9.1743101790608;
        Thu, 27 Mar 2025 11:56:30 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2c86a3f3db1sm77997fac.4.2025.03.27.11.56.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 11:56:30 -0700 (PDT)
From: justin.chen@broadcom.com
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: rafal@milecki.pl,
	alcooperx@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH 2/2] dt-bindings: phy: brcmstb-usb-phy: Add support for bcm74110
Date: Thu, 27 Mar 2025 11:56:23 -0700
Message-Id: <20250327185623.3047893-3-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250327185623.3047893-1-justin.chen@broadcom.com>
References: <20250327185623.3047893-1-justin.chen@broadcom.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_115631_853272_6D69CFF0 
X-CRM114-Status: UNSURE (   7.74  )
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

From: Justin Chen <justin.chen@broadcom.com>

bcm74110 brcmstb usb phy adds further power savings during suspend
states.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
 Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
index 580fbe37b37f..2e668935b454 100644
--- a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
@@ -15,6 +15,7 @@ maintainers:
 properties:
   compatible:
     enum:
+      - brcm,bcm74110-usb-phy
       - brcm,bcm4908-usb-phy
       - brcm,bcm7211-usb-phy
       - brcm,bcm7216-usb-phy
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
