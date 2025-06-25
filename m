Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2EB6C7EE30
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 12:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQ71ezw9lTRkRFKbsQsHXoWG4KDmTXz/Z4SCfNpEzwM=; b=3J8yXMs8phqhNw
	Iy7di3utWxCLn9R/eW8YTkF4JsJytjhgpePzAcbYJTyyDxF1KP9WfEZPnxHGVDdgc4jQbEKt+2ndt
	ep19gyB1LSfZtJPjcbhGZjJ2WiJQlmDn53xYq81iIlvMX1DlfATZ1xn4iwCbQa5lV8w25zrrdY4Nf
	8dnR2uQIri9IyeforcvmZlKuImpjuBaE3Uo0N6lbopLnjgW/J4IloYfctH6ud8pO4E3VepWJWV0gq
	zml8X0/Rm4c4SwO0Uz9Uyk2h7JPm3ARGg8iub4vQUziUBb+gB7IljbqRrrlXoEUy48wKcM8AsdEMR
	HTiX0iCaAmxs0EJZBufQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUPOr-00000008e86-1ggy;
	Wed, 25 Jun 2025 12:38:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMDN-000000085hC-3QfW
	for linux-phy@bombadil.infradead.org;
	Wed, 25 Jun 2025 09:14:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=eaodSZscksOv8tm14xnsYu3NQ9jnag2C5XRSXbuw1WQ=; b=Q63HD+y7rwqxr45h2ykAraeDYZ
	K0eyG9/hAX2tSv119CHJzvdc+uTeuBgoh1r+hPLUqQ5KBpAP9XvHDdpsND7grCbDyEUlx4iMCk8pm
	7D8v8ZCNy/EQRLtiSDpTts9V1EKfcXzBnQTAbzVZp5+Vzla0vEwyDejYZrzfaG0f8o5xfFXPE5zLB
	FHx5+9/G/dsHJS/djHzJINeYr32YQX8OQ0/32jB/EO9JKA9Tri3YxLENMgNuM1ZkdmCLNvrjdeDLg
	LPpoesJu4g92xVZx+bKmH1z0g5unQrSBPHRMGUsm5E21JTLoQOjlosAwnlS/HtUeoXy7zdTZ4Xbxi
	7vhS327w==;
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMDL-00000005isz-1Mne
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 09:14:45 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-6088d856c6eso2613339a12.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 02:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842881; x=1751447681; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eaodSZscksOv8tm14xnsYu3NQ9jnag2C5XRSXbuw1WQ=;
        b=yLxNyMDPDfUoUkGH9A6+ZazVPzBbFHTIYc0H77ozshrIEEC96g/Zwz9Gb83G2O/VR8
         5s+TlolVwbM/um55E0zZ5w5PAx88F6TMoH2XPTlQ8YiPosRgKBSyl+H4dwAE6IaB4ctv
         y344jTwFF85iB28MOGLxyY+aHx71ysNw9mMYc4vXHA9yfeAKxApYb+WvZa8XVjE/R97t
         4Op9/U729nASw3ZPSnlKkyH63vu6Uq0kAfyfxb4d/6fyUc6BLBlIf62QT+lHXqxQo/Lf
         pxXJgFmJiucz9VWhv5oEs2hLWSf7L5b4oWJTmnWjgxqojVWxIIZ3fjL7lURiQ4wd7ehu
         eLWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842881; x=1751447681;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eaodSZscksOv8tm14xnsYu3NQ9jnag2C5XRSXbuw1WQ=;
        b=WjBAHeyyjzmvadazxDmDII39V0m85kVw099/pTwbJ36JmuO2rzHqksGhwRE9IRiZ2X
         i01tn7SQaOqrmes5FHt1jgVu1hNwMB3HMYb/nxaIATFjQKc24DOxSruoHE4gSXh1dltH
         YxN854q3BUu5KVCn7nf6wprSIy0TA+HJIy4etlKdJ9Pw4yacJlfMHOzUlAlHuOr/+2nC
         n/JjzDVKdzRop0Jv6zjOWgXRSXy8HpilF7zwmrbL5J5bdTQDkumu9r0WFhJPOUaJwAR2
         k9tkCBsaDkgfbWMZf+QjhTa1sg/NsJ52sJB9yxfBsw3iSpTjLPuFsalNQCgtrf7rqFp1
         DSKQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4rX9ex2uopAzOvEAe7yz/8ZZsQ44ASkUpDQd8wXCd86ws6EIgoKgnjv8aM5rTEZC2scLMR4dOY0s=@lists.infradead.org
X-Gm-Message-State: AOJu0YzRQ5ckMoQ6bhXwk5oVn1Jf1GRQ4+mP3QpZ13uXbn3CaLKMwTkx
	z0E5dfGCWi7QeuqCoFm9vNi1PAWIJlCH+u7zbYcFGYKt2WJkPYpyhyYHwlzBEixoRM01c3ynjsz
	eE/eg
X-Gm-Gg: ASbGnctb+aBKvyCNocvbBRj0x5cw+pHgYkm6VI1et0GQ0toYtnZFZvcOzRod3WRjXra
	EeyUj/NlAUXf/fyL1v9myypbVS8h8Zm4ylsmNRq7mvNlDD6oGZk/fjruKDefDQCBu3t82KvoLHR
	46afdmyQOT9TGOUOrIdl4Jt45pxBBRRbbutjyVCDU8DrtBS2dQukuR/UQDwbIsVpQ2lKjWiRSvI
	en4ASUPmHlHvyq9PXdrYWex7aBl6WRXh+38lRjU0g3MFVwvAp3a87S3We1Ppzujs5Qb72TafNu0
	g0ShSZOT6CbHwqDvl3IUFVOg566qlczVg9BlE/lCdAU2bscFA0nBHE27y8dIXnxui65K5Q1lj60
	Zv7r4iei9OL1m0/hn+K8bL5guuNgkKaVy
X-Google-Smtp-Source: AGHT+IFunGF+TjIwhPwj7Rlya0zRP0lHBHlNUL1mjavzGDv/ErrwypExO8gGDjyrAhjbat4NdQqScg==
X-Received: by 2002:a17:907:94cf:b0:ad8:9257:5735 with SMTP id a640c23a62f3a-ae0befdd107mr232454866b.3.1750842880971;
        Wed, 25 Jun 2025 02:14:40 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054083c95sm1021480166b.91.2025.06.25.02.14.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:14:40 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:14:30 +0200
Subject: [PATCH 2/4] dt-bindings: phy: qcom,snps-eusb2: document the SM7635
 Synopsys eUSB2 PHY
MIME-Version: 1.0
Message-Id: <20250625-sm7635-eusb-phy-v1-2-94d76e0667c1@fairphone.com>
References: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
In-Reply-To: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842877; l=978;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=HKY7AzgHHOMUKSqDSyXSmqFr6rS8cg0ALPFDJvvYf80=;
 b=pP28XPa6bi+AGmir1JGO84WkB42ZjM3elJtM0fuLH4V4x+sBvSLyjs+iDvGCt1Ejj0fMGiu/F
 6MUAWaZpQkqAycz3ZyI0H9Xi+Fgd3En7swav7XUkjWFIENM9Kb6pWsQ
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_101443_501496_98AF548D 
X-CRM114-Status: UNSURE (   8.14  )
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

Document the Synopsys eUSB2 PHY on the SM7635 Platform by using the
SM8550 as fallback.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index 142b3c8839d62d91377061ade3a7c400eb970609..478d6e315a4f19d624af28710eed676bbaa144e7 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -19,6 +19,7 @@ properties:
           - enum:
               - qcom,sar2130p-snps-eusb2-phy
               - qcom,sdx75-snps-eusb2-phy
+              - qcom,sm7635-snps-eusb2-phy
               - qcom,sm8650-snps-eusb2-phy
               - qcom,x1e80100-snps-eusb2-phy
           - const: qcom,sm8550-snps-eusb2-phy

-- 
2.50.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
