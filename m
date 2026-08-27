Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBC6FC61DC2
	for <linux-phy@archiver.kernel.org>; Thu, 27 Aug 2026 12:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DvIMirFCb7hdAT/vQ1ucOFM0bNKRnQdnHrWYszYrkmc=; b=FE+w46ppmt9gGk
	OTBX4xpj1JUuzA6fXYTgkVlnSGwcu3knGn7FjpnnfAM0bw2st4agxG7QDEmtpF8P2lKvSyIMVNyma
	3FQHn9iYy84UJVVCIsIwYJ1qVZBogInGqRXAU4q/7Bu0Q2k+RX+txdBZ04zo8VNa21NtOW7+vq7pr
	Xy1NzfpLom/tPS9myAj1hscSdBiHnw/SwZjq7hqCfmeGPmIGDxpNnP9nJj7ytqu8WBYX5Y2JqKggs
	BlsxfeWmV9lfxtJk6AYVR8VX1MxXNHoIE79MdTZGoy7sDcpG0dbZmb4KJWVtNPXDjDKEU7UpaIji3
	cUVqwLV3YJa1i0zFVCLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzZ75-00000003x4O-0Y1v;
	Thu, 27 Aug 2026 12:21:47 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzZ73-00000003x2y-16DC
	for linux-phy@lists.infradead.org;
	Thu, 27 Aug 2026 12:21:46 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-49b8687630fso3860825e9.3
        for <linux-phy@lists.infradead.org>; Thu, 27 Aug 2026 05:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787833303; x=1788438103; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=i4ukql9tjc7O2uHiUIhyqjgrtBoEY/j9Aw/McRizAKQ=;
        b=Vf9omm9UG8x+iMflREDexLxbVmhhQeY9FIeRibkV4Wml/2ZR8B+BataewHOzYN3ekP
         nwSUnTqu9gaRLsnBI59IhdolMT7Z8rmJ2R0DuSI562wU7Q9e2uylR+AaaBAuFppNqq5O
         zRgmESqSBODqPgxtaIOWWIE38gTm+to2vNP01LpctE+aG4WwhE6vRl9ezgbVMaD9gnUr
         3E68PZfQVWNunxgef5nltaALdhMDpbrP94Jwv45fYdtLYX1bNdijhg6rGUOJqqECjp70
         dsvWEYWfcwJBwhOkuc3NfJuJOOxG5+ebQDn1wsApxVVRhLC1xVIq2s+old7QuibJZa2n
         H65A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787833303; x=1788438103;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=i4ukql9tjc7O2uHiUIhyqjgrtBoEY/j9Aw/McRizAKQ=;
        b=WGuEX4boAgaOf5dDMbkN/tYhra5a/vMVcIk4mg5Wg9QmrKZ60kSGwwjrDmsCKPj1Sx
         DEMx4DyaYnUMc1DtKGu2KTKIobS+aOFDuQYib43cElE4N6ZFcupA7nGJ8ZvWHTMN/TfM
         bWvICond3H7sPATN4gdX4abgIvxfpHiI/RG7BvsvHJd2P7dnWiL6oj6F3smZMzlLiaH3
         ESpayVyoWgSQMLkEZ3pJZ2yWx+4zh6B0ElHzxFxF9UMYpifdKKHbU38Qr+U06IHq0q+m
         FCXJ7Hshob5nZ58HjvjoQDP2Z7rQO29zOq8uV7B/0MbrTESmibxR5FklG6VMIXr2Tm4+
         8p0A==
X-Forwarded-Encrypted: i=1; AHgh+Rq4AHTiBY+O/jww+hwKAYEWkiuuBkdup4O5fbDdS0eUzhbpxjr8zArorZkxpKTtq7NCNQwXIQ1+XVk=@lists.infradead.org
X-Gm-Message-State: AFuF++lCutBWhp1DXxcK4C/bpsOegGisqxKjBzGaIy+k+gvpIx+4vD1U
	IFB+DtHhTxxLxIpupRhxXEd0Opb7TT/WChiL8aIgfUbRGGjUQqeT8fhW
X-Gm-Gg: AR+sD12Cy8dTiRJTKFzSkwchUPPE1HCwgBhMoaBm1B5fTw97aHVpioXw/s79LI73xUV
	L2eOX/R7pI44VDY8HWx0KewvLZUICujMGAGUG8CFBi710p+MIknqkRrdLjBsnzoFc+22Yavk3FZ
	IYJEMKMywxki8W37mgTlP7M324CbjZF6cVXr37S+h+nHG47RdVbGKdqPauhT5zunzmNeEkuKeNj
	cN6sbaJKNcJfQW/IIvU3US+K7OhCFYItiqv4WrheYaCaoSdIVx0VGRBbaf189asTym9XFOTnxKd
	nB4gKEcOeDxskZYYIJLeAupQRcCztzfVaFRdF6wOQfZ8fTURBQlJe1kU+InQp3P9dqNhBHq4Jan
	n2zkyWwkifTyPfKXY0AksRT1isJ5Zt6vTEOEFyDCcof+6D/v2Gu2fQXdQA0w+8N941q0+oSPmvl
	06JHGGXzfqcyqR8QqBatSbU5LO8e+Si3FqBa0sEIQ3FFaSBc6vsGz4lPDBW/4hBJsg73m0w3tR+
	FdyiICVzteozDee+An252lDWkAjWkFzvG/mFKycfaXNw+xh+YM6Uw==
X-Received: by 2002:a05:600c:4e15:b0:49b:8e8f:a409 with SMTP id 5b1f17b1804b1-49b8e8fa4a6mr49907815e9.13.1787833302721;
        Thu, 27 Aug 2026 05:21:42 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-79-26-252-140.retail.telecomitalia.it. [79.26.252.140])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-49b465226d8sm50099535e9.0.2026.08.27.05.21.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Aug 2026 05:21:42 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] phy: airoha: add support for AN7583 PCIe PHY driver
Date: Thu, 27 Aug 2026 14:21:19 +0200
Message-ID: <20260827122127.18874-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260827_052145_369246_4E3E5CA6 
X-CRM114-Status: GOOD (  11.97  )
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

This small series introduce support for Airoha AN7583 Gen3 PCIe PHY.

It's not possible to reuse the EN7581 code as the register changed between
the 2 SoC and also the setup method changed (different calibration logic)

Putting the PHY in a dedicated directory is also needed for other series
current pending that will add USB PHY support.

Also a dedicated schema is added as the register names is entirely
different compared to EN7581.

Changes v2:
- Drop move patch (handled in different series)
- Rework to regmap implementation
- Rename files to more specific name
- Add .exit logic
- Drop QPHY in favor of external PHY handling
- Update schema with new requirement and improve example

Christian Marangi (2):
  dt-bindings: phy: airoha: Document support for AN7583 Gen3 PCIe PHY
  phy: airoha: add support for AN7583 Gen3 PCIe PHY driver

 .../phy/airoha,an7583-pcie-gen3-phy.yaml      |  65 ++
 MAINTAINERS                                   |   8 +
 drivers/phy/Kconfig                           |   1 +
 drivers/phy/Makefile                          |   3 +-
 drivers/phy/airoha/Kconfig                    |  13 +
 drivers/phy/airoha/Makefile                   |   2 +
 drivers/phy/airoha/phy-an7583-pcie-regs.h     | 377 ++++++++
 drivers/phy/airoha/phy-an7583-pcie.c          | 815 ++++++++++++++++++
 8 files changed, 1283 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen3-phy.yaml
 create mode 100644 drivers/phy/airoha/Kconfig
 create mode 100644 drivers/phy/airoha/Makefile
 create mode 100644 drivers/phy/airoha/phy-an7583-pcie-regs.h
 create mode 100644 drivers/phy/airoha/phy-an7583-pcie.c

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
