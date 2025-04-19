Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEB5CC369BD
	for <linux-phy@archiver.kernel.org>; Sat, 19 Apr 2025 11:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QENeAc9kTeTAYE789Im5jNG8RZ/B2+ONhrpYccdqF5U=; b=iCsM1arP/nMIkM
	LB5quHCc3W9uzL2J72M+205xcMgLFgjlTPQGWdljBZaPdibigOxuRElxnEJSUz123DBsVBSNbE3Og
	nhg2AJTV0WaRJ6joPtMJKZlaZNa1+DY7Ezz4aT7yYtwsjXRph84J5gECDP+i+FngpZX0/Sf72ga3W
	va1YXpHZy45D8YmEbyPn2Iu6MxYTc1WUd695lD9k02ul/QSdtMpBv/zJEXtmzy3SHUSZrC8QPSgS3
	+czS8ZoW9a3S4JOuuMZMYkGacVgzLfCcMOaYTJpjIFreTFDNmmOr9+Q+MvrIX92y/r8JOLjibB0lu
	2hdV00nociLuBYZP/2ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u66Tt-00000001FI3-1g9n;
	Sat, 19 Apr 2025 11:35:33 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u66Tr-00000001FHc-2Q48
	for linux-phy@lists.infradead.org;
	Sat, 19 Apr 2025 11:35:32 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-73712952e1cso2515438b3a.1
        for <linux-phy@lists.infradead.org>; Sat, 19 Apr 2025 04:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745062530; x=1745667330; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EqEfCzVm0s9gbAWdrawTqBLk3GajDKRamX+SOKwoyMA=;
        b=Bz/i/NTrzWzpltvo1/kMiSh9QAWpOOad42QtuhLye/4/LC1p204eVUUOoA3OZvFQRs
         WE3/IXdCPdrBMQAxRGEX+K6maDr/V2+ltvdvYx4WQ1xBdVdDHTWW3h3Z07Fv08BQdFdY
         IBSyFWR8a1SQSnX+hluI297YX1b4O+I/N1ay7ZPffZqqj8KMmra2+QZaQDevtMJBnTE5
         2VoS+FkK8v1/BOC2sxTl33hGiTSrq7o7km1GKUa4G1PzcOvCM4lNbOA+VFbbGalA+PtZ
         kS3OJPm2Y0ZDb0BCcIgel1B5Wkva2jkmbrmuyDx/cBu6yUwGG/ecH1/uWPditVezM4B0
         ASYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745062530; x=1745667330;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EqEfCzVm0s9gbAWdrawTqBLk3GajDKRamX+SOKwoyMA=;
        b=s/e+ivgK2/Iecm8XJ17M9duw4V/oNWMbtDiFiM6JzuRJ8f+LjG+p/vF4rHt0kGPHYQ
         WY8xxCUCplsg1YpUgeaBV/hI1g0mp59fO+XdkVt+O7L2PGJzG9UkhQUqfzKE9fuMptqU
         krurkMZSl2c2TWw+4Av2iW1FBQ1AUfym+TBC/KPoyTpHznFQtapCs9oeLb/bE7MF/529
         DzJSeKzEMlAGXSwKURWFFFRhOlwONj/p+szSBVC5brqmF/5dWZzQ4aioggkkF1ViPDqn
         0atJq9m3SjD+c4UjYYRhfZEkwSdgSxLn8Wz01o32k90r3RR3d39h/HMXPMCZOWhb3tBF
         evQA==
X-Forwarded-Encrypted: i=1; AJvYcCUd6wMVDkZRdU5CWiUfmMplTeJLwcWrDVYDZObDEVf6JyPaTRKgnfko+JxKkdDxK0aAS+kKhAC3sTM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yykfcup3KVmytW5cSGswXAc8/6AEbCXgEaLbNthItJ1ZiLsaUOZ
	njvNorl5LoQKH+UkClYT6rx8kkFG3WGmZeu2XXCEPaWU+Ifx5Hb/ZArSbVJYlg==
X-Gm-Gg: ASbGncvrTM8GpCpgZ3SvVShGIHzDzXYuzWmwJEgKw4XIEYGOazJMFXbd9tMkmjCb35E
	IVEffiZJLXpPrtoLIfTqyi8I+9UrrhvJajV5/ZwoXR5zXpQ299R3nj+gWnCBskvVPnomB8Hn26f
	woqUPhOFUlbieCMp4T7IAu3nGZ3it+hDFS2jsnQQqWyLGGMkBPZR4oRenY8AmYrI32zfQSgRFod
	tqICGmlJ3ljZeldcaX+FfptzYu9w+FVmyXeWUUe52Ip9wOx4VOUslrssGWJQPmr/7PNrZKNvnr7
	t447rVTPbAr6XEM403DqRM2iEbpmYS5X+dXEF1336g8KXEf/oiUx5g==
X-Google-Smtp-Source: AGHT+IFKbXf8oiV98tgt3cEpHu3Ind6E5MOTHI2okQE5l7xhF/QuhKO27dk6PSwPkrsC8Rn2xyTTFw==
X-Received: by 2002:a05:6a20:d485:b0:1f0:e42e:fb1d with SMTP id adf61e73a8af0-203cbd4513fmr9527773637.36.1745062530611;
        Sat, 19 Apr 2025 04:35:30 -0700 (PDT)
Received: from thinkpad.. ([36.255.17.167])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b0db139eecdsm2705742a12.22.2025.04.19.04.35.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Apr 2025 04:35:30 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nitheesh Sekar <quic_nsekar@quicinc.com>,
	Varadarajan Narayanan <quic_varada@quicinc.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Praveenkumar I <quic_ipkumar@quicinc.com>,
	George Moussalem <george.moussalem@outlook.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	20250317100029.881286-1-quic_varada@quicinc.com,
	20250317100029.881286-2-quic_varada@quicinc.com,
	Sricharan Ramabadhran <quic_srichara@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v7 3/6] dt-bindings: PCI: qcom: Add IPQ5018 SoC
Date: Sat, 19 Apr 2025 17:05:18 +0530
Message-ID: <174506248856.36993.6558804848056183191.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250326-ipq5018-pcie-v7-3-e1828fef06c9@outlook.com>
References: <20250326-ipq5018-pcie-v7-0-e1828fef06c9@outlook.com> <20250326-ipq5018-pcie-v7-3-e1828fef06c9@outlook.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250419_043531_638495_21FFC649 
X-CRM114-Status: UNSURE (   6.32  )
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


On Wed, 26 Mar 2025 12:10:57 +0400, George Moussalem wrote:
> Add support for the PCIe controller on the Qualcomm
> IPQ5108 SoC to the bindings.
> 
> 

Applied, thanks!

[3/6] dt-bindings: PCI: qcom: Add IPQ5018 SoC
      commit: 5ae42cdeb1d23fc604fb6c8a23cff35a4a47b10e

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
