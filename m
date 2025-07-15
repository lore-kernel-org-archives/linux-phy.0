Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3651C83F22
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 07:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4lGpM3WzNAKNebi1JT/otjl9fjALb0NDSrzFWVD7iE=; b=A+XSCzjpO/0N61
	NyJSVFx5gzsl0Z6cXOoq3JaS7pumWPIfJzKpe5MuUp3onAyswFtak6M+hh8Oerl0o4j4s2REexRdy
	sBMjS54gbfcqdFkloI6VfQL7tmsbsbvWsWCUCOSVONSalNda74EGw3BRDEcRdUVa5jh+QqU+cIoXh
	EVTTCybo4cfYTfUUcp3IyS3MCg77WdgS5d7mQ3XmELaE6V/ibgMbWOTfHkAmWF2bfSo91tdwnidY4
	BBjSCL5ygLRDW39Ek4c4YXyWxZb5WHbO6pyNiolGvbrsvru3+ZqX1z75hMLi/OWvM6XyOEhYzO+4D
	YFabskttOm82vPuAHjfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubaBT-00000004Mhz-1bEW;
	Tue, 15 Jul 2025 07:34:39 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uba6q-00000004LjO-0djP
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 07:29:53 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-45348bff79fso58963535e9.2
        for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 00:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752564590; x=1753169390; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HlXDOuB2NWs3tsHwTAfl9oYldXG75qTwJcRqgkwKc94=;
        b=ZXdAOkpyY7WC3cSCmFqYOX+wqgVYZrjJc3pbgfpjLbBPlZ/v3Lhoh2ovZXrO7cWlPB
         syRUD5SDTVtJLhRlDJsjRuQjZE+uw3+lIFnuS+fllQlCb4Kj0tM9qZkf3vopQhhN+siX
         DbX8bezsasT6nomV/zihK9FzvAL3yl7TCtPndDhseQrm5lPYp1Gx6J4itZ4g7lDxb0uM
         kT+2OB2sKZOH6a2J6ZoiqsHccimb0G65qbab8L4j0mGh2QDfbL+r9M/zlKMhg64GgXw0
         w6TXXQlJD4VwcYOywPYVNSALkLGKEvF/nIy82tboWeg5QvAEWcaCoewjj6p/8iNPotiy
         j6pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752564591; x=1753169391;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HlXDOuB2NWs3tsHwTAfl9oYldXG75qTwJcRqgkwKc94=;
        b=rkiGSmvkBPVrdbWZt0d10er76/UuLwstnXyybjecI+zCz90bGpE9wnABn7v07AJMfO
         Qj2CxeZr5jV1+ddor3CrUNQkntiw9c0KL8peI0OJpH5Ppz/s8tDQl1Kd8rcFz24QSgmM
         myfRSzeRYguBupWl7lPCrAFqtNhrvjkSzDejd1435twjXjxDMdn+nY1UmecrfpG90HN4
         M+USBjqR48SDeDEcQ3suW6dmf3H9aZWhZcqiIec9kqy1H1YWRVohVibTfFFXuNSHJneW
         iPO3po3DyhsDQjsOGHPGL2ki+sPvNHWZvf1tEEsNOV8DPylPPvdOUhrzmIAiPnZyokLi
         AS9Q==
X-Forwarded-Encrypted: i=1; AJvYcCX4iMjwoTIwfhDq248tNPwSmeA7wULsfeyGXLnt0kY0pMhCATEb65pAY8H2C8iaID4qjFKywThTf0k=@lists.infradead.org
X-Gm-Message-State: AOJu0YxgcLH9ZVOTHlURIldCYvo1qz639HqhHPW4mCiKPyAA1a7RBuDv
	qc5LS5xshkQh/szivsUfGIRDpFTn0txKDpARSqvHz121hNt1vCA6hsj2FZyahKyWX3A=
X-Gm-Gg: ASbGnctqB7TSIU38OnoDhY8kHCZ1EJRIPGElCekXYMHoW9bxDbIpXdEbyzOH1wWngg+
	gx8vGZlD0wgvB28p/e+4KRG1mzyDAgAAEWp3GL0oAAPpxUoQQUUjNPUFE/6Gy7sIHNsCy3CgVY2
	B+jX0t/ZhNgQasiHPUhfeH/YQdVhwUPXryq/RKASyy+dqWpwa6Q6Uvp0wkpG9N8+mVxFy2mrUts
	exhLm+SjA822q7xfsDm0w4jLrXka630IQuMIl64PxiZls5KIixdiQzO9B9DP86zjcMTFpvZLa5h
	dpebkIJPQyFsrbt0+52Ui3n+vJsxawHhV/bKeHVb4zfUgPhxrJ38eP1fhhlQE2sv7gaGuEkOwQ+
	C3rLq5wZ4tqmKFFz9KaTF60xGqU29eCh3Rda9UOmKiPxUS5ZiH8jjj22I
X-Google-Smtp-Source: AGHT+IFNBRgqSjk2HFJaRqvUEeFclqwrA9aBptgjfGQRiH2n8mqaepG8GqzAyox93VmumoOhYOZ6TQ==
X-Received: by 2002:a05:600c:a4c:b0:439:643a:c8d5 with SMTP id 5b1f17b1804b1-454e3399cd8mr155077575e9.0.1752564590536;
        Tue, 15 Jul 2025 00:29:50 -0700 (PDT)
Received: from otso.local (212095005088.public.telering.at. [212.95.5.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-455f8fc5a01sm106703395e9.32.2025.07.15.00.29.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 00:29:50 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 15 Jul 2025 09:29:35 +0200
Subject: [PATCH v3 2/4] dt-bindings: phy: qcom,snps-eusb2: document the
 Milos Synopsys eUSB2 PHY
MIME-Version: 1.0
Message-Id: <20250715-sm7635-eusb-phy-v3-2-6c3224085eb6@fairphone.com>
References: <20250715-sm7635-eusb-phy-v3-0-6c3224085eb6@fairphone.com>
In-Reply-To: <20250715-sm7635-eusb-phy-v3-0-6c3224085eb6@fairphone.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752564584; l=970;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=jzFcFIoWblJGC7al1pj4N6nIT0ZnqO6zL1kXGKeDmAg=;
 b=9yt+l6cGjdO9axu+nOBS510EXP8FcGFhy41mnRfZ/ANKPK8zyygFXbG0EduAhrC0C0EZZUyzl
 6ZVPM7LcNG1Csu0bgS6EDkRl0LvHYvoIMB/YI+mqmcaU8GyRyWltYmx
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_002952_197494_E2052DEC 
X-CRM114-Status: UNSURE (   8.33  )
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

Document the Synopsys eUSB2 PHY on the Milos SoC by using the SM8550 as
fallback.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index 142b3c8839d62d91377061ade3a7c400eb970609..854f70af0a6c1ff93615fa8dc1031b4c1ecc2e71 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -17,6 +17,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - qcom,milos-snps-eusb2-phy
               - qcom,sar2130p-snps-eusb2-phy
               - qcom,sdx75-snps-eusb2-phy
               - qcom,sm8650-snps-eusb2-phy

-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
