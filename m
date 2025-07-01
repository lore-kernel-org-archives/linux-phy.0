Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DEBEC8302F
	for <linux-phy@archiver.kernel.org>; Tue,  1 Jul 2025 07:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3GipOx/xY9G3OQTZc6mXqszTfWeQbYEPgeQ/3vBSpR8=; b=MBJ+iRCx0CFLRV
	ictUBdugdvFrf6dqP85fDEBwpMfPjQNcA7lZjZ1iMyI5BupPFj8pSola+ZWr2hIIly0IeC5Bx0SQd
	LRk0yKQzAZOpAO8PBypmB+QExfHHs9TVfSQuN1fjLS36KeDjrvlaLUU+TxAhyZdig1Z07RCMzo6o+
	g/8q2DUxUHsI26TuzZv8aPOQREt1bGY+AWVOAmCVtBkH3orzGJsCade6iMbIdc3tl4WGxReKZN4Vy
	/aOl1zXGJQYIVzCyNr+2l5gxgK5hwMnuhTJSATnPz2tO9A1jBDzn+PmxyFW5hta6NoQVR1Xso9A/D
	iwWSPl2EjhXTJD9KC1AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWVHC-00000004Fnj-0ptw;
	Tue, 01 Jul 2025 07:19:34 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWUbj-00000004AOU-0Mux
	for linux-phy@lists.infradead.org;
	Tue, 01 Jul 2025 06:36:44 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4535fc0485dso7030115e9.0
        for <linux-phy@lists.infradead.org>; Mon, 30 Jun 2025 23:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751351801; x=1751956601; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XF9BsXSBJjchhqC1W0y2iD+54l1AU0WSwwDuBKksZ/A=;
        b=NXU5IJ59IJA+8ywbGKnYQsYS8SLjl/DSUNlrTZLLjMqS5xcHggEYtAHewqesiguRdk
         J0bHf3wRH94lyQOCumrpUTcb2UGWQ+wT8VkvJgjX+1bfg71W4WI2tnR5R/t/DbERMep5
         i99uTDME5+nrszsdMUbduqBtptMR/kDmSBmTaEjTuuSMtUejSP4FXkZRkdUDsGbHteuS
         Yynu4fTlDOfC0jbnU3AHMolHTs1JH+UtcQm5LBHAdCTlVYK6UgzYx0jbGgbDQU9bq3TF
         bwhmRLDllNtlQEJbC3qqXRsRoZcxSxTjdqhzV+3DBHy5B2j5hYt6ZK0yyWxcigegAHYK
         5TFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751351801; x=1751956601;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XF9BsXSBJjchhqC1W0y2iD+54l1AU0WSwwDuBKksZ/A=;
        b=MKX3N4Ibx5i34BCBg4+Mf/IVTqJKxCcnoazZKQvuJRtOwG1XqLEnzD7G7sEhDVcVvL
         RTk7v3Pm/v8EIgTug2amUyTUkHV5ruykfdLS2AwyBG4IWcnBUNPTYnToOz0EuxjYdeRa
         aaPrYV8eg+Ez/wphxneoMI4D6nZtfRReXEBBj8kQFG9Pwqa03Zi+yNCgAzZ4Vep4ODDc
         raMOpDNz/12pZ6J5kbtaWPAa2beNGzaiuYs7pq+tkuEMeWlrVqVH56IQNhXEBZsfpOY2
         k+ED/rMNyqps7EAf5Xkp73LR4g3LcQO8WQ6+zUmm4pHBpRnz5eQntyxytMTDJqeLb6ak
         HCww==
X-Forwarded-Encrypted: i=1; AJvYcCVRlDZ+o/odIAXSLnwHicXkBrIIqP/9UHK7xF3fM9i+qAPOWYL72MOx8mkbsFkCsgehak6+czkw7f8=@lists.infradead.org
X-Gm-Message-State: AOJu0YzcCCfs9dSmc3bUJ4vaZJZYYl3D412/70cH9zzNXWf1McTU71IZ
	dDi/zOeF228NKJKlsAGIzGXP3Y5JXpRUMQYFwQyuCsYilljNvgZkTxL3vXVMYocQJUE=
X-Gm-Gg: ASbGncuU5YX695QDVUOW5907wCC9khyt+PTLcu6Ba9v4GWDSBh3XIgSWCVGVHkYQ0t1
	Bj/BggM9DugAo5bryOPSe5sO0IC3mDx1X88zCn0IH1iFYhVksB0Bxaw8MxHR1VgnDZrcs0lT9/g
	9ytM0z4M6rS6++duw1FwxaY/N6DjDXrqEoGpZ4fHpIB4E6nA66JKqicMwB3qxmCvrNo/7+ELCHc
	y8BXAQUXdYIAuUkg3O3+lNOKqwMJO9Y4ZT5JoUE+8tQE24+K6gGMRATDM+sIEmyIB57NUKB6XkD
	TDCrYjk87K9pxeAjdgfpq0Snn4oJTZMTqGfzjrCdnlftDvAD5BCGfXm4TqF6fPsnTih6qJQUYjY
	sEVmX/P05Sg==
X-Google-Smtp-Source: AGHT+IGi0D+19VoSHVRWUeDZpEANnFxXdyNqWbA6Zz7HbqVloW2LQcu/8xvrAEhyjKTVBMpjMPDSIQ==
X-Received: by 2002:a05:600c:470d:b0:43b:c0fa:f9c4 with SMTP id 5b1f17b1804b1-453a812fb30mr6274275e9.4.1751351801542;
        Mon, 30 Jun 2025 23:36:41 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538a421434sm157119695e9.37.2025.06.30.23.36.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jun 2025 23:36:40 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lubomir Rintel <lkundrak@v3.sk>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: phy: marvell,mmp2-usb-phy: Drop status from the example
Date: Tue,  1 Jul 2025 08:36:37 +0200
Message-ID: <20250701063636.23872-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=779; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=LVOBn5gIt8SN8+AKL1VG0Mcc4HlGoH1nt639zAe/kOo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoY4H0ffaPTbeopHCCCMc1UVmiQZRCkCVMP4baz
 8YHWXyqWvKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaGOB9AAKCRDBN2bmhouD
 1x01D/9XFJFW9DXK6yY20AHJAmi1JQG17UexaKXhKbRP1qjAcsWq3WePdUEIaMHDSBYOMY+CYsd
 rS2q0FNN/yv+0pBPDnvC/XBhfS2tRQT4SCB4Vt4NH7BX78uSwnAr7pWiWGnQ145yCeEBD9vNA/b
 sI5sRN9Ea+fZERgKqwpqQ59DQ65CyaPbmmp/dm0sAHxRBAVOc3cFWCaQQJvSJNXiUSlBYWH8rtI
 uIefJGyUCu1pXsl/gsTIliVhn0JFTl8IXvAT3jPo+Hp6ZTmNB6OE8BVCl+PdR4pQ68fiMFqJ+Dn
 awlO6/i8bPhUcCnpuw97SnTy8qBfEhWtkbeMjT+vZxa/dgFfl3ulUtLmb5gMNLiJDrdRnqk3+tz
 9VD7nITR7jv+58y6CyNFum3Mm2FO2j3F9W2eL96DQlHFjJCNna8zGk1d/IgTXaebHrHib97tMg9
 xI2zLFoMKXAE5QiG0TZRr+z3BUNtEIk6DhJbuX5QrT8g2/OiTORqNt+/sL0Q4mS3eSu30pdinB0
 KbmvcIbNWrJvgj5q1nIRagdSMHUanCwTxeOWsdq+j2CR66lHyNy5jo8rtI/x9tkKcOZN4KpMiX2
 V5AGBDKfTCO+Q1kF+W1vMUuTfrzPRWzNERfxvjOTHlyvHFmP4SarDmzyUPjt60/8v0tMLDzKj0p dpsgim1dFMB5uuQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_233643_153917_8397C03A 
X-CRM114-Status: UNSURE (   8.15  )
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

Examples should not have the 'status' property and 'okay' is anyway by
default.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/phy/marvell,mmp2-usb-phy.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/marvell,mmp2-usb-phy.yaml b/Documentation/devicetree/bindings/phy/marvell,mmp2-usb-phy.yaml
index 2441c5fae550..af1ae2406f65 100644
--- a/Documentation/devicetree/bindings/phy/marvell,mmp2-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/marvell,mmp2-usb-phy.yaml
@@ -34,5 +34,4 @@ examples:
         compatible = "marvell,mmp2-usb-phy";
         reg = <0xd4207000 0x40>;
         #phy-cells = <0>;
-        status = "okay";
     };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
