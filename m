Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E93CC001DD
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 14:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oJXMNny3MOMc4+so/vAXr5hFh5gPwSNoeg/CVknX+GA=; b=KrP8DrPNhR9pI7
	2WzhB8lexaWhXWtLT/kcKs72W4uytiLiTm1g+oUE2hY0XouGFRObG0888wFcwUQqnA2RhiulttpgN
	IcIuOjjGRJ80HM4LL+x2Zxwj+0+Mp5CsvXuHwNDw4omzVQfaKoapC3m2UrbVHyBKxLrd7iOL0ANUU
	mVKihHvVAKKs/M6uRL6zId9rFw8omPysgnLWL4umgp6cJYvWP6otiQ1GcLXBKei4VTv/qkt5YXt5q
	MVor0VP3q29NcJ4x10Oqvu0dTNiRdZZhDMRzfhP+PBwfFhlFWwwJTRThQiBvj1U5RGB+jyOh4/8IQ
	vAfJ1kSfSkeWpQ1Q6NlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEic-00FBpV-2q;
	Tue, 11 Jul 2023 14:51:58 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEiZ-00FBom-2j
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 14:51:57 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2b734aea34aso1850401fa.0
        for <linux-phy@lists.infradead.org>; Tue, 11 Jul 2023 07:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689087114; x=1691679114;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=p2XsPmwSqX9Gd1WyomM6zWpuzgKDAWrgDwIrAbNMU7I=;
        b=rsu2irE1H4DrWMvUp7Lbi5cNv2peQjK2wFAaVi1AlCBW47LZuUhKBJmSyO8Q9/i8sD
         nVR+Wt2h+zrq0KNpIqvqoObhen7ZLbRN+cFzSWJ/kBtlo4aw9ocsYGQ0GdgC8QljXPtv
         ygL+FJqzVrAo7EywuGIGZfI8dAS98PbxOPSXwhJc1/ACyHp4auMPOyi4OT63gDNE8vYi
         Nhzq2h7BoPIMex64gYhD6jzohC3+Rq8TWJWY7zBPVXI7EV7F7CS5D/QZyjP/GZZqD7JM
         L0pIrCmRbe3v2tSoCrOt8bNFQoApv+iI3lTXR8GItmyoOqFG25A0kVQ6BEvNIRy2oyQ3
         GGFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689087114; x=1691679114;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p2XsPmwSqX9Gd1WyomM6zWpuzgKDAWrgDwIrAbNMU7I=;
        b=Pmk6m0+294ci1CNN2vSAkDLDU+tyXfi1pZ2BJ5605GnnjwZcU3jQtNF2fU/4HHVAA5
         ydY/HtaAFYM3tYT3U0T0EqTacUfFvA9eQjgG3WPZr722qRRZVjku5CaxGK8jeG3YiZJn
         aWKpED2wRKnNJiTPbuu5i1JMoTIQyOOIT/hAwOpXFbkRqEuUI/CG8oBmFG2Y378YzWK+
         MdAotDAtpTDIwawdFDiTmYByykMfMLTueSrQMjW0gTFRXoSINnqyPtdNcUErDd7KTgGA
         KO+xmeLj3ZIc+Rsla5ePISb5lQJBwpNgu0xv5H7fCfoOpe/vGyqHwtVQTIzGsecxOZY1
         2Zmw==
X-Gm-Message-State: ABy/qLZnPcO2vUU4j8EYJkgTOQWRy5P43Ho8vK8/eU7TNIGLEFYnxPRy
	6mVvRatuD7lgozrMdR7sT088Gw==
X-Google-Smtp-Source: APBJJlEsnz+jmijOqb/3+xiSUoZqe+lJUQAWRgjneiCrf6EOnQnP3uZ2g1TWr9YlHGHSF2b40Waenw==
X-Received: by 2002:a2e:7c18:0:b0:2b6:e651:8591 with SMTP id x24-20020a2e7c18000000b002b6e6518591mr5441446ljc.37.1689087114101;
        Tue, 11 Jul 2023 07:51:54 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a10-20020a2eb16a000000b002b6ee363337sm492454ljm.120.2023.07.11.07.51.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 07:51:53 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 00/11] phy: qcom-qmp-ufs: convert to newer style of bindings
Date: Tue, 11 Jul 2023 17:51:42 +0300
Message-Id: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_075155_887407_862D87CD 
X-CRM114-Status: UNSURE (   8.71  )
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

Changes since v3:
 - Rebased on top of phy-next

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

 .../phy/qcom,msm8996-qmp-ufs-phy.yaml         | 228 ------------------
 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |  48 +++-
 arch/arm64/boot/dts/qcom/msm8996.dtsi         |  25 +-
 arch/arm64/boot/dts/qcom/msm8998.dtsi         |  18 +-
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  19 +-
 arch/arm64/boot/dts/qcom/sm6115.dtsi          |  17 +-
 arch/arm64/boot/dts/qcom/sm6350.dtsi          |  18 +-
 arch/arm64/boot/dts/qcom/sm8150.dtsi          |  20 +-
 arch/arm64/boot/dts/qcom/sm8250.dtsi          |  20 +-
 arch/arm64/boot/dts/qcom/sm8350.dtsi          |  28 +--
 arch/arm64/boot/dts/qcom/sm8450.dtsi          |  28 +--
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  10 +
 12 files changed, 114 insertions(+), 365 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
