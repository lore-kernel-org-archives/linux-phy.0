Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE210CD484C
	for <linux-phy@archiver.kernel.org>; Mon, 11 May 2026 13:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H2WzQXY7W6xQlquQ1cDMfZZjVV/u2ZdR1YJgwl0NA/I=; b=quSBtwhQlN6G06
	vtu3d3iX2/8cJGS/TN8PqctVR7XS3VYX32fmOq7DPXZbhG3hSZLanHt2TDCBxbqoO9VPBeSQsQmCj
	DqDAbAYqx11++LDAO5orlveJCKzgXZd67vtncP4GRy6i+z632b4MM7ZoXQePMVQAxON6BE3gqmExT
	4corEfKlgsNDusAE3MFznhRoq2OZVLQ+Tv3akFHaPzOxYZWBxFZOf3WqVX87BoRCqLgoLxVA2dNP8
	W97LmbXQJ/xz/xzgo5ssbwP17QAc0z5sce1qACiWD590SdsH6dB8WFoFM8VlGShRETkH9AyY16d2U
	je5iW/JwBBHsHfJnxWRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMR8f-0000000Dpxp-2CGI;
	Mon, 11 May 2026 13:57:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMR8e-0000000Dpwj-1YY6
	for linux-phy@bombadil.infradead.org;
	Mon, 11 May 2026 13:57:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=+yZ2RV9klSfc79KrOIT+9nKykbDSPRLRaZkXlnlwwJM=; b=U7BHU7ARaScGFyKWhEAfLAU0DU
	ZmRjP+dNvJQYo8ZKXVHUk8k5vFxgZ8Hi2K6A+db187IgO+Cm3x6cN82H+z7AtTwWOfxQhX6Hmq05b
	4QSfHWLxlcrDYCl9aN/LbKUycvy5RFreNwfUs4DCTcBECOxRPCbnMD9Vha4QfhEZwW9PZSr4RGed2
	qVOZ31pZHVPVdANZZbTXZrhve8KaxJtmUAifAJrlIK9PHQCcWbqKEunvqwVwDQHIlNY+279UQRXd8
	smZrrtiCvFoktQmJRroyIdcy359k231nAjuN3bHA6T5Co1nYIS87/YkBKfhqR5RlxevFWel16WHGo
	nclQd2pA==;
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMR8Q-0000000BsvT-2Vyk
	for linux-phy@lists.infradead.org;
	Mon, 11 May 2026 13:57:38 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-6746d0b2b4aso6544803a12.3
        for <linux-phy@lists.infradead.org>; Mon, 11 May 2026 06:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778507844; x=1779112644; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+yZ2RV9klSfc79KrOIT+9nKykbDSPRLRaZkXlnlwwJM=;
        b=gtlgRpLEpzdTNXJe4cU5HHjgES8eI1VYS48fPrzXKDy2JC46EO0VdUZ68ZOsJB44eB
         YNAoYJyiriEGDMc2rLUxaQ26+/YUN6k8UXWtaG6wOpcEnP/V2UkTWPUdah1Y3RfZ6GMX
         j5gkO3A26/o9v+v5EUiOWLB1v671RSrIo5LCd/XPtFiuytP+WUQjFWaoS8cOlLYs79jI
         KX1PhnxQRvIMB43JpoGDXrUWrItpg0wxqQ6eJLdhWTHeIEivw8XhGdgmrP1fxmwLGOuQ
         wCbd7vLvPyCquCtqTezBrmdIC0a5tDRqDX63qZZnagd65OAJi903kzCJiMWDIRnp1niG
         3FfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778507844; x=1779112644;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+yZ2RV9klSfc79KrOIT+9nKykbDSPRLRaZkXlnlwwJM=;
        b=dBmCsY6mCgGCAsHzRqBFjYFfTNhSkNt1wzNHvySmu6ujkTuqtgK7ewEqC1dImBpfqS
         PaugPOtIX1zsc+kdoSkfPl+6xcxDzJUhzf5dK4n7bIhOZBtAu6O9XUjzM9QIOLTQlDGY
         PjQ8hjUVo6RgBCQ2VX+2spDwQd8tKwdB95EjRe/AwiW/grXPGz1koUgxV2/Ni1TBVOG9
         koT8fJO+6eyFCzM+1Vv7qf2InS6Sux8YPnfP/oCx5a3q/cJlzg5AOnAj1t4sk+5dwC57
         Oeq2v+eScZaHmUT46vZ3eX+V7LTR9HNsddBqHbYCrD/wzMzBPdKkkeHKP30Rt0sNUfNI
         btPA==
X-Forwarded-Encrypted: i=1; AFNElJ8NQwpeRkdCzia356I0wR0t50Gx5uLbCsmMx5cVaUwb3L8iimhAmgnnpMqVX3gouhlYZjCpaaSpKKI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzoJOJ5MWp2N7O023n/uzws0t5y67MI0lBFfCoZD1fe2qheBcju
	QwU8ju8yqovQS7hcJmhxMz1MYgmU8Yl8Sp3mKz4P2mlubUsDF8JR6gIo
X-Gm-Gg: Acq92OHYDVRTFfsIaDZykMgQ0XLkTSQAsm/tpFBljr1J3ucTmjSmuuvTodDpoD59Qje
	OJM/XH3aPvUi1O4ckxx8OAm99IEH2zc/8KSUoSnqSvJnvzjM0ZqWODipJohyI8y2V0CYVFfwjIs
	WAY+V3/wo5dXW46iEg0WzkWM5WOkpTGwbFUQ8q2YHWDQPZq4bW+SKpDbUriOCvczGKLzLrnl6hv
	DBULv/05REcYpdtKGzwQoVSH1ilGzo02kDViKz2ikevOJtn3ZNrn4mIRhO6FajRNq5zBygBDDCR
	VnzyauDfGGv3rxSHdL+Jq95tyJRN+tWgP2bzM1k11B+vkzgKFzZLnoUpxFhK1cqNGFaNfyTCUh3
	6NCKdtCa12jkPgxdbhnnhT1rk6HlzJBmY8EV4P5Qaq1QqOCByWddFvqYrzdaWU3lCRaNcHh23dx
	iJjFLm9vbDqt7f
X-Received: by 2002:a05:6402:5297:b0:67e:2498:dc7e with SMTP id 4fb4d7f45d1cf-67e2498ddc9mr9228829a12.11.1778507844261;
        Mon, 11 May 2026 06:57:24 -0700 (PDT)
Received: from xeon ([188.163.112.56])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-67ef0b3b904sm3685357a12.1.2026.05.11.06.57.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 06:57:23 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Peter Chen <peter.chen@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: [PATCH v1 1/6] dt-bindings: usb: ci-hdrc-usb2: Document nvidia,external-control property
Date: Mon, 11 May 2026 16:56:56 +0300
Message-ID: <20260511135703.62470-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260511135703.62470-1-clamor95@gmail.com>
References: <20260511135703.62470-1-clamor95@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_145729_585850_D34475A8 
X-CRM114-Status: UNSURE (   9.35  )
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

Document the nvidia,external-control property required, for example, for
USB lines in HSIC mode connected to a modem, where the modem requires
precise control over the USB bus to properly enumerate all its stages and
intermediate devices.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
index 691d6cf02c27..a13c1ef49a57 100644
--- a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
+++ b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
@@ -75,6 +75,13 @@ properties:
     type: boolean
     deprecated: true
 
+  nvidia,external-control:
+    description:
+      Indicates that the controller is configured externally and that the host
+      should not attempt to touch it. Usually used by a modem which requires
+      precise bus configuration.
+    type: boolean
+
   ulpi:
     type: object
     additionalProperties: false
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
