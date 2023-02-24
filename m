Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4E8FC61DA3
	for <linux-phy@archiver.kernel.org>; Fri, 24 Feb 2023 10:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F+0qfgWNY3N9/QwUjWEBUCrqqAg3q0DmNcm2hyCTKPM=; b=QrrxfqoMOQ8DmO
	uU+klQusZ2niSbiJ4zkyIaIwcIowycoMKq+hcT8wmGi4hzYivm474jobOjrmtJdX/PesF489rvCYF
	gzl/bv7E8clQJLIaYsKUFGMCTkFCIIHpVXRTJC+2dtGx8POv2flHSLXcidkYMAEcyXxyuNfqdJtco
	dEg5zUtMxK5YJyDYtalv5K+dYJU9ojDG3S+aE2pd2BQkKnz/9FaB9w9yqJ9zHykh53QCWFNn7jIyn
	iJZcU12ufnLtVWTpE+4wxZ/NsyjACHQvXje7MP2saelvRijHCboLUKQDSNjXF1gjFCKZEyRGLO1FN
	fMLfgFn59D82uUduoQsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVnN-0029CO-69; Fri, 24 Feb 2023 10:59:21 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVnJ-00299X-Tt
	for linux-phy@lists.infradead.org; Fri, 24 Feb 2023 10:59:19 +0000
Received: by mail-pl1-x635.google.com with SMTP id q11so16683642plx.5
        for <linux-phy@lists.infradead.org>; Fri, 24 Feb 2023 02:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4nUiMlzdFVdylVAwvGF2mzTH+MQ8jxdhSSAuOwiDOrk=;
        b=sD8fpV1iBm1gOL4hX7ssWFPYQXWuJgQM8zfQlrHHNH7z4u/zl+ABhh3jZ9pqJ1wVj0
         B2vre9cVycIC8F/bA4JpHy3L9p4kxWrr1DAGUo7LNSZeIlOGA68QahK65J/W34IjD4aW
         txEgU8+p3DQaH/gFVaGvmVbba0SofD0L49Z23g3ywpEmWZsyv99YcS/9RAAx3P+/BAYa
         J/Nxq3++RIozCHDwOm+WIHfuEA/Ji7ud0cjY/xYFjubCxZLu9QA2Lka1F4jxN5LMG7iN
         ZMFlit9zuVRtpx0vpb19qfbkT/3YkzQLseDNNBRnD7eNE1tIH/lS1VoNnOoHCkiCweTA
         hV+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4nUiMlzdFVdylVAwvGF2mzTH+MQ8jxdhSSAuOwiDOrk=;
        b=aY0bdV6syD5w1GUHTnaumLD0SCjcxLAWzClJbuvfpAcTPfUrBzcMkOgaoLUUcHgmak
         FqOBT2zVPMmL/3VZix9hHWO/YY2dr8hO5cvzOe4RtJG2ZkACzv+UsvureMFEgMYNCIJu
         OT4BZ5SjXUjD4IldhWxpi7rKr9xrq4uXIJL6AwxEUcpquProOwpHIj81sb9QaL7nlWKX
         uNPm1WrP1n+m7dpWBWsykItnB0zFfgD/aq7bU19zxc9eIkXkJlcF64mJTUwBG1cWgl9s
         zC1ylyXnNWBi9k9lakVAjWygxRQ5Ng/0peKm5MyHB4qdgIjCy+6ziHDgZDoRHhfugP1L
         KX8w==
X-Gm-Message-State: AO0yUKUgd5IJzo5c+qkBAiTBLgU2dK4RXZkGBrID6f3ieBQPub68zCrm
	gZXjnUBHS2oqUgPBq4GsIHjd
X-Google-Smtp-Source: AK7set/S+ZygCYuCUKF9LEBR1rJYfsKfJShN1QO28O1CvLDthNfwy1uzHl2p2i6zudrTi6g/rOYYrw==
X-Received: by 2002:a17:90b:388f:b0:234:6b7e:d016 with SMTP id mu15-20020a17090b388f00b002346b7ed016mr15132219pjb.22.1677236355675;
        Fri, 24 Feb 2023 02:59:15 -0800 (PST)
Received: from localhost.localdomain ([117.217.187.3])
        by smtp.gmail.com with ESMTPSA id gd5-20020a17090b0fc500b00233cde36909sm1263853pjb.21.2023.02.24.02.59.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 02:59:15 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	lpieralisi@kernel.org,
	robh@kernel.org,
	kw@linux.com,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org
Cc: konrad.dybcio@linaro.org,
	bhelgaas@google.com,
	kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 00/13] Add PCIe RC support to Qcom SDX55 SoC
Date: Fri, 24 Feb 2023 16:28:53 +0530
Message-Id: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_025917_999253_3C3C3616 
X-CRM114-Status: GOOD (  11.69  )
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

Hi,

This series adds PCIe RC support to the Qcom SDX55 SoC. The PCIe controller
in SDX55 can act as both Root Complex and Endpoint but only one mode at a
time i.e., the mode cannot be switched during runtime.

This series has been tested on Thundercomm T55 board having QCA6390 WLAN
chipset connected to the PCIe controller. For powering up the WLAN chipset,
an out-of-tree patch has been used since we do not have a proper driver in
mainline to handle the power supplies.

NOTE: Even with this series, I couldn't get network connectivity using
QCA6390. But that's due to ath11k regression for which I've filed a bug
report: https://bugzilla.kernel.org/show_bug.cgi?id=217070

Merging strategy
----------------

PCI and binding patches through PCI tree
PHY patches through PHY tree
Devicetree patches through Qcom tree

Thanks,
Mani

Changes in v2:

* Added patche to move status property down
* Added patch to list property values vertically
* Addressed comments from Konrad
* Collected review tags
* Fixed review tag for dts patch

Manivannan Sadhasivam (13):
  dt-bindings: PCI: qcom: Update maintainers entry
  dt-bindings: PCI: qcom: Add iommu properties
  dt-bindings: PCI: qcom: Add SDX55 SoC
  dt-bindings: PCI: qcom-ep: Fix the unit address used in example
  ARM: dts: qcom: sdx55: Fix the unit address of PCIe EP node
  ARM: dts: qcom: sdx55: Rename pcie0_{phy/lane} to pcie_{phy/lane}
  ARM: dts: qcom: sdx55: Add support for PCIe RC controller
  ARM: dts: qcom: sdx55: List the property values vertically
  ARM: dts: qcom: sdx55-t55: Enable PCIe RC support
  ARM: dts: qcom: sdx55-t55: Move "status" property down
  phy: qcom-qmp-pcie: Split out EP related init sequence for SDX55
  phy: qcom-qmp-pcie: Add RC init sequence for SDX55
  PCI: qcom: Add support for SDX55 SoC

 .../devicetree/bindings/pci/qcom,pcie-ep.yaml |   2 +-
 .../devicetree/bindings/pci/qcom,pcie.yaml    |  35 +++-
 arch/arm/boot/dts/qcom-sdx55-t55.dts          |  53 +++++-
 .../boot/dts/qcom-sdx55-telit-fn980-tlb.dts   |   2 +-
 arch/arm/boot/dts/qcom-sdx55.dtsi             | 179 ++++++++++++++----
 drivers/pci/controller/dwc/pcie-qcom.c        |   4 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      |  91 +++++++--
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h    |   2 +
 8 files changed, 303 insertions(+), 65 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
