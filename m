Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 247ADCD8CB2
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 16:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c7H1+NJu8Pm63iCV4tx7C3mgGu2lVwaOALC/VO1A7to=; b=ZGgI6R2PBvB6Ty
	bdvGk73jEjW5m1+EYIsALD+Y1DxuUFwm9W1prbBUfDvDsXVGQBYfcI++7q7WfdSnjUMHYGBMBU9FB
	k4Z7ZB2Mhd20GfmRrmxKKcsRNZKHBOeLPPLuk3cILs7k/o//seFRvRF+2ClEVeFiByRur0x3838V+
	mI93CrLFKFLW0zKwlaV4qTCYf8PxrfWskzHG4PG+ptfUG+zrxDWDznlGSuiirLPwgoAyAaLfg/8f7
	9OGvPPx8gZfUazZDGzbi1Sy0TljDdMu77I8yeKx1syufhctBMpLZt90ngysS6PDhqxpU1Wy+N3uVG
	aZDTBmlH1XI6pDh5JvIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXLt8-000000087ja-3OS7;
	Wed, 10 Jun 2026 16:34:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXLt5-000000087hq-0hj7
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 16:34:44 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65AFwfqx1997141
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 16:34:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+XOIWlH40mHwtCgl/V4OVzh5le+vWzs9b3kpiqeGWEw=; b=YuZqHw2DxiLOZgXy
	FHEd1jLR9TZTr1SQAXCLCOkvey5LHWGgBrQyNIGxFxX6k6xORDM3TzmqVCO3Onks
	jzlV/fCkg9/PDKuGWxu5rWE00mroKCs1BDxhKmQP/UR1vadsJ4vxcFWojFmHggLM
	4zgxykU93hyYmvfR7zbOKNgH4zgco8H3b+3O9Kc2NxMmfgNVBFgyJlbSvFUzBSBW
	5W7HmNI4qGplaGOR89HtrM7TFsDOSTuqS2zixq2Un7L3qUN6l/B9NmIeEPMQT5xf
	AnyCOfO4YjCPerFjbovV4XNaPOCuIIIdzKEEhMTh7DUBXPW/x2sceyAkYTK1NR7g
	d+hIbg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eq0kdb0ay-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 16:34:42 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2bfdd99f6b7so99430825ad.0
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 09:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781109281; x=1781714081; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+XOIWlH40mHwtCgl/V4OVzh5le+vWzs9b3kpiqeGWEw=;
        b=jelYf1RO3726NNs/kEbFP0N38FrOyTN05HyFiuZCv9EYyVqeqE1BsMUrbK2lozQUsP
         EHdqekD5ai5rbgCD9AfB5ns3decUy7z8SB7VOeTJKfzr0AbfBe//5AuYkfqXldOI51sy
         81gaERlSTC6uGQVN0sMM8JnnaAFUYw1Pxwc98cpLyuOBS6IlLOtDal9iNVdXzi/E1PxE
         rpOdTWNbV4mb9Qe/qzK67KoJVaP/wNqBna1yMc9l/FH8doR7bDvtUQhIr8zkkieYyYDZ
         JDsWnYffyxDBYXyGG3iNHp1FlVb3m0kOHA/jEbMqQ09st5OOCbqOjX0owblSVffsSY4b
         UKtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781109281; x=1781714081;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+XOIWlH40mHwtCgl/V4OVzh5le+vWzs9b3kpiqeGWEw=;
        b=n7kvXeoE6xoU+bXHhz0ccKmcwvtqjikE4Ma8s70x75LgapFRJYS6GHS6yNFbpOZ6IS
         CcAwKF5U9CWFmeYlD5XtMYpeFx0CHuF/JNvZu4I9Z1yPu1HchmsF9HXsw6E8U4TLBjOD
         zVuF5iSBFjSBsxDGlp3q0txq2VOvePuLCs/X8+wFaURemoPWtlgva/+dPt4SgfV+iwKv
         B7eECvkcg3GjY+68VQ5lkHA3nNtlpzp59fqiyS7qRklO0L6z3O6qOGef5Jc3d+tVVew3
         0J8p1IrRhIL/upKNwWhWgp0H79VnRaY0iU9uxEGJ0zLhL+2oAMJnMaeCi1zGXejCHQNe
         MZOQ==
X-Forwarded-Encrypted: i=1; AFNElJ8hauzby/Kr9TGi+tGpCm9+YEGWeXfUVrvrPWMlj4hs3c3LXz7BZoNohSFyVYrbm6Q+3I/49pwuUCY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxHut5TdINgkgSFJnDW2Z/9N7ZzRml5AEtCU8Z3YszsDayu9GlX
	h/meWpJj67KU4e2DuKcBozqcSFuXvyQw9iYFGKit7BOjgsHgr4s77P53/5Cozmi0uv5NgLq+VN9
	EewWdVJJk6LS/tYh7lJqPS9CSoMMlETkMr17Jl347gU6uXNXea2HU2vIyi2Af2IpKYZ8w
X-Gm-Gg: Acq92OE3wXk6bM5F9f7+eLxV0k2/W/XRRmdpNLZ6sCjDrLEAQIShjbb1RYubnblh9x0
	tRE68YQCkzoSkw7zueskt5xcbYvWCaCqqa3SfcB0tJd+Dgf4sXv41WcyxNwtaoAJAfk68VZ6kjT
	NIqXCqbhioEBCsVOBqqB/bMC2YVKdee3Do7WKFTzmX6dM3FSZ+ti1nvtAoXeqFrOh6fZn8U/CiN
	KhAvBHWSCwPByikBBvsaoCMi+c062gcPSAyWzMyuuelihauRfFY578ja9trhtszPS5OBJ6J7X2k
	E9mEwj9HQbxLQlIKQU0HM8s8EynW312RPvArIgH7ZlmYQEjK2/NpousqWpPsw3aS14515qQgqP7
	BtRvhqEbkzQnd8iYgTyXErdkgw73ynOI=
X-Received: by 2002:a17:903:41d1:b0:2c0:af09:f3c7 with SMTP id d9443c01a7336-2c1e85c0cbamr301159735ad.30.1781109281091;
        Wed, 10 Jun 2026 09:34:41 -0700 (PDT)
X-Received: by 2002:a17:903:41d1:b0:2c0:af09:f3c7 with SMTP id d9443c01a7336-2c1e85c0cbamr301159285ad.30.1781109280647;
        Wed, 10 Jun 2026 09:34:40 -0700 (PDT)
Received: from [192.168.1.11] ([120.56.195.233])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c16649c302sm243953905ad.73.2026.06.10.09.34.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 09:34:40 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20260608-eliza-v3-0-9bdeb7434b28@oss.qualcomm.com>
References: <20260608-eliza-v3-0-9bdeb7434b28@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v3 0/3] PCI: qcom: Add support for Eliza
Message-Id: <178110927481.10093.6331910233610738004.b4-ty@kernel.org>
Date: Wed, 10 Jun 2026 22:04:34 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=TeamcxQh c=1 sm=1 tr=0 ts=6a299222 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=n8UK4BQKCdfH/t0JQ2luxA==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=VwQbUJbxAAAA:8 a=jf34NEdiGforZHx8bOwA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: G8bxFhjbR_3erlTdCkfvYf9gs8qftTc1
X-Proofpoint-ORIG-GUID: G8bxFhjbR_3erlTdCkfvYf9gs8qftTc1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEwMDE1NiBTYWx0ZWRfX+tQcbjTECZjj
 I67evI0DhQW3B50qQkc2wz0st6LJbJ+UymuNE6mPMHhutNhjJFLXYFUpnZ+oeStAp2D5t9jmpm0
 shlYW8w9CPz85Wf5GTas1Q9Qhhww/h/iiDqO3Rd1tHcCd8V6tGg7nL5rTlfzbZW5jdDLZae9S/I
 GP0aAxfMYkTD+D7Arf2y0rFXJxo9wldavnBk90rL3RXY2zObMzBmaW9bBZ6kcdUsORyn+biHMVe
 rY4kA0VTochuSeRMkyujJ3O5XYXbKsAGeeLwHYmf9Avmr65WcQn7o/fNovHDCbS4JXTkXvq57Fl
 ZK2EiWhsqLLphSHFsPjfbEeEn5fr/qAkg0WrxlB2fKyCy5EGAPNDTsLgttPAE2vuApjRsNi1V6o
 /WKBQ9N8D5n1+NaZ4yeL0vJSQJdDg9riTAe2zqlzKN5hBNxoHvWGkiGrCEJF1sxTbW/UVKPmwEu
 rUTIn13Qu7o8UU7YHnw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-10_03,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 phishscore=0 spamscore=0
 impostorscore=0 clxscore=1011 priorityscore=1501 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606100156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_093443_347105_3CC42502 
X-CRM114-Status: UNSURE (   9.98  )
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


On Mon, 08 Jun 2026 14:18:12 +0530, Krishna Chaitanya Chundru wrote:
> This series adds PCIe support for the Qualcomm Eliza SoC. Eliza includes
> two PCIe root complex controllers capable of 8GT/s x1 and 8GT/s x2.
> 
> The QMP PCIe PHY support adds a new Gen3x1 PHY configuration with
> Eliza-specific initialization tables, and reuses the existing SM8550
> Gen3x2 configuration for the x2 PHY instance.
> 
> [...]

Applied, thanks!

[2/3] dt-bindings: PCI: qcom,pcie-sm8550: Add Eliza compatible
      commit: d233626c009a515fb3ed823fcd78cee432701d1e

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
