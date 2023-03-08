Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50717C64EC4
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 08:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QDvd3bfkafeq+JPydgxsacaJBXn5+mdYZGrbQSsNvRU=; b=AhDJV5ojL976JS
	ddtuCTZ8K5imHC+B1RETNEHmcDqKgCihF0WG3nYJNdHL8nAJUZu2CtiN8lQ6tH2qILSWAMcxW0fT0
	2DsPX5uD5yIpnCkttpgdtI3rl5loij3Yqr8+ADkLQilwdmorFIIEwzmOntBsAVnYf1zne3qZA605y
	YQv7xjhJdVdvRoOl8BL2xAhNvLXUPcS74Ej3XuYOWgFOmrZfQDQvhFnhg0b27xQaXfMt0I4ScQkPU
	DJGgWbJ2iukfcudFcnCc9PWEk188f3R6dZaUu8mvRvNzak980HB/hOhOmqUmn1D2+0nf/m4BvGqbJ
	lhTW1Smp+ahHq7TTXOTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZp6F-003xWG-Or; Wed, 08 Mar 2023 08:24:39 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZp6C-003xTn-Dl
	for linux-phy@lists.infradead.org; Wed, 08 Mar 2023 08:24:38 +0000
Received: by mail-pl1-x629.google.com with SMTP id i3so16951451plg.6
        for <linux-phy@lists.infradead.org>; Wed, 08 Mar 2023 00:24:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678263872;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=osj1SKW6kZ1T93ajN37jlKR7h51v+fvQYy/hH2nwHc8=;
        b=VewtrsHjftHPXayimBaLVs/TwnICwIS7DwMkz3opd126q+y3jtCz4OhpG8/hHPqtEJ
         fH+moNKb5ymPsiGbzq8UAbk0n6vxE44/qghRFfCpi8/0ONfqmfXMj0x/2vC4RHiXu6Cj
         DJEuz44r4xTDmHlNVk81wcT8/A1QvUUYcQ25ZTCzboEfE4SQ5a25Pj3x5lhvY6b00cwJ
         nU+XPXPPMJJukvCQBdNav1ZSeWICeXBI/13uVYGwmmPvaad/iZJIQAYSYDfzPjYyMBaQ
         3MQOcY+x/JIplYc4d62V2dgo0I00g+OQZZRa8ks0UurBKwYAdpxGesAba+qGWdqi4okh
         CWxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678263872;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=osj1SKW6kZ1T93ajN37jlKR7h51v+fvQYy/hH2nwHc8=;
        b=VpekpQFcIrw297VKbfLGLr3KmQqpCIL4NKYLspfTXHrT0X/Oq+6/Rd6c2Fc9/8GPB6
         9IWiya2BXp4KdtLbJtZ6ZBTze+duNI1UKuAvMvRLfYBKhwyeIaNSjgDNsz2AAiF5Hgfn
         gr/z4bCi+L1C3nJAwbRc+evu+ZKxjYyWX653uo/OnXk1jcMlortgPuCZO2/eoRuhQBdW
         BXicdlOfXZorSLxIS1AY5ie6zzas7VJiCErOETUFv45rgGP8QDIeATC5C774yAr5uUX5
         fkQz+w2xe/AIU7Icq/rmhYCF/CNGH7kUpjLiAoAdBmASMpZSv4ZzEaMB6zfC4xl/kXGn
         W7vQ==
X-Gm-Message-State: AO0yUKUIB9dU9daesT+8hzkdDMegwiDZY8ectOFGSe5IH+9RlysVs41q
	90ovt18YOILatZw0YDwKfJb+
X-Google-Smtp-Source: AK7set8JlGASTjjTyOz8omjowBwQoY5LeKSQuohvDNUO3uchr/1Qz30dXPwyx7GO4AmhLSqJRoogxQ==
X-Received: by 2002:a17:902:ab8e:b0:19d:1a9c:34dd with SMTP id f14-20020a170902ab8e00b0019d1a9c34ddmr13479566plr.17.1678263871779;
        Wed, 08 Mar 2023 00:24:31 -0800 (PST)
Received: from localhost.localdomain ([59.97.52.140])
        by smtp.gmail.com with ESMTPSA id s10-20020a170902ea0a00b0019aaab3f9d7sm9448086plg.113.2023.03.08.00.24.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 00:24:31 -0800 (PST)
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
Subject: [PATCH v3 00/13] Add PCIe RC support to Qcom SDX55 SoC
Date: Wed,  8 Mar 2023 13:54:11 +0530
Message-Id: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_002436_530432_9ED2764A 
X-CRM114-Status: GOOD (  12.90  )
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

Changes in v3:

* Removed "iommus" property from binding and dtsi file
* Fixed the PCIe I/O range
* Rebased on top of v6.3-rc1
* Collected reviews

Changes in v2:

* Added patch to move status property down
* Added patch to list property values vertically
* Addressed comments from Konrad
* Collected review tags
* Fixed review tag for dts patch

Manivannan Sadhasivam (13):
  dt-bindings: PCI: qcom: Update maintainers entry
  dt-bindings: PCI: qcom: Add iommu-map properties
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
 .../devicetree/bindings/pci/qcom,pcie.yaml    |  32 +++-
 arch/arm/boot/dts/qcom-sdx55-t55.dts          |  50 ++++-
 .../boot/dts/qcom-sdx55-telit-fn980-tlb.dts   |   2 +-
 arch/arm/boot/dts/qcom-sdx55.dtsi             | 178 +++++++++++++-----
 drivers/pci/controller/dwc/pcie-qcom.c        |   4 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      |  91 +++++++--
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h    |   2 +
 8 files changed, 297 insertions(+), 64 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
