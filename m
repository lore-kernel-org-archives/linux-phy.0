Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2B5AC7EE32
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 14:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w9oonNWnzRGtYKhVgDY+ao41xPI4OlRUJok9NU1mGh4=; b=fGmwujaVGhtep1
	tu0Ueg2YyDOq/vLrkT4jqFn8YU+PNwB6x7nB7sHmx9XH/L+3S2Syjrdh60lacNBao7atUdCcmlLZV
	ow6wvjMm1zGZm1CLDk3l+r1tkW3PVmmI62D3l9zTfK9f+KP1mTH1siirqJvmfbiO+ckNk+rjoE/he
	0HtYTh6vtsodpxwa+/RiMm+50iBZ3ZkbEdRCfaMvEwnftQKVvW8UrkRd/yx0TEcXh3Gz85xbEsKtq
	lgCtvrhiYxGzRaFhp42hKTSCrVFPwGf6WgBORGj02VkSrMEemvVXQjcrXEaMs+hQe7kuAARpLJO+Y
	gPvwytm6qPDdxiYZEh4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sfi-00ASZ3-12;
	Tue, 23 May 2023 14:07:30 +0000
Received: from mail-lj1-f181.google.com ([209.85.208.181])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sfd-00ASV8-2C
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 14:07:26 +0000
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2af30d10d8fso38178881fa.0
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 07:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684850784; x=1687442784;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=p3KXXqilydNSJx6QX3Hgpj305X8NziePQgOUtVW2SK0=;
        b=awrh0BqWOiMn4lx3qn7o1+q0TkhqFBkzo2YEPuF0b0V2QzSJ+TaGwlAamERzgeSl+U
         DXcVOIuWuQtrmfyuqYZEhjmvZZNEgW6czIR8aImz3WTwmaEk0+3Kti1KPKvo5Lo5u3SN
         pI06QZBM9H/lyvwSvD94h9UPRQZxDNWpkXigpyVsXF5Jj8h5qXKLglfrkBqrJUhg8Nre
         T78RurSEY2XG2IKoRFh42wODb6HlkKZdPHYu8UQp6qJYaJn9JtvxC0ZCLi5igBse0mDS
         s5P5JooLOjxgukFiN13cLhVM0MP6iBhmOKgKvHKv/4cLgax+pouWNzeo+q0b7OXkL7qj
         ajfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684850784; x=1687442784;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p3KXXqilydNSJx6QX3Hgpj305X8NziePQgOUtVW2SK0=;
        b=cgsr5jEJJUyvNG049/Jsil66tYwAhdMu2hAOUaInDHAj51uvgPAMXNjcANk8QyYvDR
         Grvvc20QZAmbJlXl5FhHZ6oKau4E3F3tven51Ok+4pv9S+SjUp1RS6qqT5xQ55qtieMo
         8R6gJw7uOSASSCzZRyAAAZMdX9Hj+XKCcCcXVZrejvrQz95A6Ves1876jDLFeQBLfn1h
         BLMn6wbRjPSGx9hOaia4oY2pjgI3ovDUyrit/NFlcTZo1F4/UfIyKNJnkUkVEpY4Bt+u
         M2Qbq/+h9H6Vu/3v85f000QxZovdYHpzV8aE8ZWiCvw501c4kLUHRdX4XhPgwNHDsw4h
         FwFQ==
X-Gm-Message-State: AC+VfDw21CkKrHXkGbaMu6f3synQpnC6tYS5RZRuU/wFyLhI6+PxqvD2
	ktDNeDzUcla8/VQwN8cgr7PiKOUncd2UIaaWl6w=
X-Google-Smtp-Source: ACHHUZ4zUgBMgGLYTzXfn85FeLCsjP+6KNCl1xEr29QcvYTUYMdyldO+hcO99YKNm6Xqjayq7IUy3A==
X-Received: by 2002:a2e:7019:0:b0:2a7:73a2:d915 with SMTP id l25-20020a2e7019000000b002a773a2d915mr5738921ljc.5.1684850783704;
        Tue, 23 May 2023 07:06:23 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id l1-20020a2e9081000000b002adbe01cd69sm1633536ljg.9.2023.05.23.07.06.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 07:06:23 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 00/11] phy: qcom-qmp-ufs: convert to newer style of bindings
Date: Tue, 23 May 2023 17:06:11 +0300
Message-Id: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_070725_719479_B7CDE3AC 
X-CRM114-Status: UNSURE (   8.62  )
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

Reviewing several patchsets for newer platforms made me understand that
having two styles of QMP PHY bindings causes confusion. Despite binding
documents having notes telling that old bindings should be used for
older platforms, it is too easy to attempt adding new platform with
older QMP PHY binding. Thus let's have just a single documented style of
bindings.

Changes since v2:
 - Moved status property to the last place for msm8998, sdm845 (Konrad)

Changes since v1:
 - Split large patchset into smaller parts
 - Rebased on phy/next

Dmitry Baryshkov (11):
  dt-bindings: phy: migrate QMP UFS PHY bindings to
    qcom,sc8280xp-qmp-ufs-phy.yaml
  phy: qcom-qmp-ufs: populate offsets configuration
  arm64: dts: qcom: msm8996: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: msm8998: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sdm845: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm6115: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm6350: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm8150: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm8250: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm8350: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm8450: switch UFS QMP PHY to new style of bindings

 .../phy/qcom,msm8996-qmp-ufs-phy.yaml         | 244 ------------------
 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |  48 +++-
 arch/arm64/boot/dts/qcom/msm8996.dtsi         |  25 +-
 arch/arm64/boot/dts/qcom/msm8998.dtsi         |  18 +-
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  19 +-
 arch/arm64/boot/dts/qcom/sm6115.dtsi          |  17 +-
 arch/arm64/boot/dts/qcom/sm6350.dtsi          |  18 +-
 arch/arm64/boot/dts/qcom/sm8150.dtsi          |  20 +-
 arch/arm64/boot/dts/qcom/sm8250.dtsi          |  20 +-
 arch/arm64/boot/dts/qcom/sm8350.dtsi          |  28 +-
 arch/arm64/boot/dts/qcom/sm8450.dtsi          |  28 +-
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  10 +
 12 files changed, 114 insertions(+), 381 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
