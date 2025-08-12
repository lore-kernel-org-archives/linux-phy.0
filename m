Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11853C87FCB
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 12:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7kMrN9fJReOTTkVfTtNGCXhPqlxIDbjApxw1kRAtvSY=; b=g7t2ihrKlTAHYK
	BUaVZ8IXY8t/1hS6UlfYtKmyKCceKd/hA3FSBbC60SKFlv1yiCCXAko7ayifqwPHPAa4NuyzreD+C
	yQNAmWiF/qKLQD50PWrgchvsyMJ5oTBwOt7IFKvyY8zi7waQBVrnpY3eqxWVLyecwgx4A50JBwe4q
	9JvtbMlwpKjrWKoyXFCBmIo03Chpap9DGm3BvuhKd9cxbW5nu4wMDgR1S0DMcKeqjKU5M6ir3Kc7V
	W0NBnMlKwds6DdGOsKdXCAD7xv4EXvJK/fVkRiXMZdAZNWG01vdRN6RHWprIw4jTIlgLQgrZgjmha
	oRGXRu6lmuXIsKIa44Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uloFl-0000000AjMe-32Na;
	Tue, 12 Aug 2025 12:37:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulkP0-0000000AFGj-0ydh
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 08:30:39 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57C5gvOS018312
	for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 08:30:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bi6m/pVb5jflsCkOfw1Mj9CvEgFoiG4pcGOpd9jiz1k=; b=P67iR1s47kYscGhe
	O9zPHi++k/NQUNH/o8RP2qBWJl9GSR6q1v1G21ewDaLPyGKKk0vLc5U0FDxKhwxZ
	e4QAa5XCyi7DBa4/cH25AAb0dNlcCsnKEsnbA5rxnyac8oShFH8wbnewkEZbP8kQ
	I80qC2cQqXRs2rIkm5Fl5vefmxlEiirQsirwsEGuYav6dkI0FQWQCHAknt5PibzS
	ch0QSs3SWR+NbcerQaMiG5SoIm1kMGLH7vXnqf7ybwUQsCEqP0Js1fvFnxjBryuj
	op21jpbUj/ADyEJf7dkoPjSvrimuYIqfLNmlcr1EAzFbyxI1X7G5Zj+7OYPiR4pb
	wuU6cA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dy3g7btv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 08:30:37 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-76bf3e05024so4962664b3a.2
        for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 01:30:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754987436; x=1755592236;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bi6m/pVb5jflsCkOfw1Mj9CvEgFoiG4pcGOpd9jiz1k=;
        b=g5cmH77BxIXXtTFtYZip6yYhfsFo/SEC7YjHulYRXT2L1S9/gEXDfEWUTCVbcHBQS2
         kvro8gPCMxvLA0BEPF+21yQcEFT4F34oqNth6fzkeiKpYmXGdUhZPrNa5lgBHgW07KYf
         0XzTFIqGlFS/NIy6IlXD5tGcK3sKHTCHfDbFZAYVLFW8wpVyLHmdh45PtkbmQ1iQUuqp
         VY2/rHki71AYS1AlWB0ZC+bKhDLPa8AQHthwkK+4Bhue8jVCjpPc+wg1wTMAMFtcrW1e
         TvLqpAg37PFRSY/SnI0NZFwCNyBxRnG8evmTEyEJepfV9udZhSbItiHen9oc1K7SwHYD
         aFKA==
X-Forwarded-Encrypted: i=1; AJvYcCW34PfoyUZZ30QL4eU3Uf/JjeVIbxmaJmSN7qE2ods9I61risQDN+oPfIrdi633wmI/xyPfW4IfD4M=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3OUB1tWrlY7bQMrP2MQkW7HfPgzNk8kili92ycc683NaohOP3
	e+gH7z6+2jvFSTLZZ/CvRXjJFXb6feza+SwgkIBlwbPC1AnytHuV+3YM0+fVG2NoZ1Bb2FFSxTy
	XTIH8nSUnAqNCPoXVYIUjBhVP0TNtxBL41pDl2UlLgm8EAJ8m3sZyRfDNjR5bARN8Xuz0
X-Gm-Gg: ASbGncu91bDJt2ymAXVxpT154Sil2iraLVRjURtEhIwxijixmUFM05nQQtImsuwuJUg
	YTNq51I55oqKqB6qqedf9a8DDwX3Rz/a//TIi5S/IGS4KXpnP5/FVnXPUTgieJdXsE+I1RmONSk
	sC0QBTrg+p4BZET3JnWVIcMpoQGf2kwDrrgLsMjleDesHwY6WaLIgr6wstpieDONb4cl7SkX7+m
	xsQZqCBzSwH+OM7O4gIWQF+KH3BEg11GDUzzdWTuhtSZb1QpprsquZ0cJeVoRVeZTgBh3vIrUxZ
	htIdRW55P2YU8EIxL+e7xWHMT2Np/rdK/6HTEds7xFsv1G/Wq2RbiPdwNLH+0hfGwcv6nDy8SdC
	JhrZBPI157rASueO/2zlSNYRPWCnB
X-Received: by 2002:a05:6a00:c8d:b0:76b:d869:43fd with SMTP id d2e1a72fcca58-76e0df7bc58mr3529242b3a.18.1754987436112;
        Tue, 12 Aug 2025 01:30:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+FIkellPFGyuQhUX8ul7c/6NxlAJA9FFPnlvIXzr7SdxxThQEuj1bkyz/Lwsz4ovg36Gb4w==
X-Received: by 2002:a05:6a00:c8d:b0:76b:d869:43fd with SMTP id d2e1a72fcca58-76e0df7bc58mr3529190b3a.18.1754987435567;
        Tue, 12 Aug 2025 01:30:35 -0700 (PDT)
Received: from [10.133.33.66] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bcce8a838sm28946654b3a.32.2025.08.12.01.30.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Aug 2025 01:30:35 -0700 (PDT)
Message-ID: <dc3dda22-34d3-4254-ba60-9037f3ccb368@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 16:30:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 0/5] pci: qcom: Add QCS8300 PCIe support
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
References: <20250811071131.982983-1-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <20250811071131.982983-1-ziyue.zhang@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=X4lSKHTe c=1 sm=1 tr=0 ts=689afbad cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=QyXUC8HyAAAA:8 a=TeDmwtwga0I2cO4QvJcA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzMSBTYWx0ZWRfXwlOt34snpH+U
 9p3v9Xr9Zl4f1JtzfIMlze+6vVS5RW+xSJ2ty2eqdyN2Fdp4x8C1uyWvCYeX6mWXyT610shwyMY
 jMPn8GzUk63HR/WdqZtkNZvfoEUFUnI6WjdrHUYEJ+DppxMHl7TibnfGYtbTY9TieouqfoVvuwB
 AR57PFQXE7JYXdK+Ml+PqSUvzSCKYH3p2TZS6lZSOVUiLZgi2cdxrdkwCdelPtMeSQmSmLrDdDb
 r2w4PhjYLDNkzJrvr8egwssxty/SGsiBjPHtBgtAdRXdVoubwTNFQfYf5OjTBtQECr4gWw3zDKP
 3VXIsEdWoQxOqx0M8Y6DS2mLZ7pqz7rwaOqgIDHOz+cwHPscuJnB1G7/LExHjWU6tdmMdVhn9Ga
 CZV8gipr
X-Proofpoint-GUID: V5gjQRDOdR_3xcw_AbFL6tyZkXgCKuV-
X-Proofpoint-ORIG-GUID: V5gjQRDOdR_3xcw_AbFL6tyZkXgCKuV-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_04,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 adultscore=0
 spamscore=0 bulkscore=0 suspectscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_013038_283851_61363385 
X-CRM114-Status: GOOD (  20.72  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 8/11/2025 3:11 PM, Ziyue Zhang wrote:
> This series depend on the sa8775p gcc_aux_clock and link_down reset change
> https://lore.kernel.org/all/20250725102231.3608298-2-ziyue.zhang@oss.qualcomm.com/
>
> This series adds document, phy, configs support for PCIe in QCS8300.
> It also adds 'link_down' reset for sa8775p.
>
> Have follwing changes:
> 	- Add dedicated schema for the PCIe controllers found on QCS8300.
> 	- Add compatible for qcs8300 platform.
> 	- Add configurations in devicetree for PCIe0, including registers, clocks, interrupts and phy setting sequence.
> 	- Add configurations in devicetree for PCIe1, including registers, clocks, interrupts and phy setting sequence.
>
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
> Changes in v10:
> - Update PHY max_items (Johan)
> - Link to v9: https://lore.kernel.org/all/20250725104037.4054070-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v9:
> - Fix DTB error (Vinod)
> - Link to v8: https://lore.kernel.org/all/20250714081529.3847385-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v8:
> - rebase sc8280xp-qmp-pcie-phy change to solve conflicts.
> - Add Fixes tag to phy change (Johan)
> - Link to v7: https://lore.kernel.org/all/20250625092539.762075-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v7:
> - rebase qcs8300-ride.dtsi change to solve conflicts.
> - Link to v6: https://lore.kernel.org/all/20250529035635.4162149-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v6:
> - move the qcs8300 and sa8775p phy compatibility entry into the list of PHYs that require six clocks
> - Update QCS8300 and sa8775p phy dt, remove aux clock.
> - Fixed compile error found by kernel test robot
> - Link to v5: https://lore.kernel.org/all/20250507031019.4080541-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v5:
> - Add QCOM PCIe controller version in commit msg (Mani)
> - Modify platform dts change subject (Dmitry)
> - Fixed compile error found by kernel test robot
> - Link to v4: https://lore.kernel.org/linux-phy/20241220055239.2744024-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v4:
> - Add received tag
> - Fixed compile error found by kernel test robot
> - Link to v3: https://lore.kernel.org/lkml/202412211301.bQO6vXpo-lkp@intel.com/T/#mdd63e5be39acbf879218aef91c87b12d4540e0f7
>
> Changes in v3:
> - Add received tag(Rob & Dmitry)
> - Update pcie_phy in gcc node to soc dtsi(Dmitry & Konrad)
> - remove pcieprot0 node(Konrad & Mani)
> - Fix format comments(Konrad)
> - Update base-commit to tag: next-20241213(Bjorn)
> - Corrected of_device_id.data from 1.9.0 to 1.34.0.
> - Link to v2: https://lore.kernel.org/all/20241128081056.1361739-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v2:
> - Fix some format comments and match the style in x1e80100(Konrad)
> - Add global interrupt for PCIe0 and PCIe1(Konrad)
> - split the soc dtsi and the platform dts into two changes(Konrad)
> - Link to v1: https://lore.kernel.org/all/20241114095409.2682558-1-quic_ziyuzhan@quicinc.com/
>
> Ziyue Zhang (5):
>    dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings
>      for qcs8300
>    arm64: dts: qcom: qcs8300: enable pcie0
>    arm64: dts: qcom: qcs8300-ride: enable pcie0 interface
>    arm64: dts: qcom: qcs8300: enable pcie1
>    arm64: dts: qcom: qcs8300-ride: enable pcie1 interface
>
>   .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  17 +-
>   arch/arm64/boot/dts/qcom/qcs8300-ride.dts     |  80 +++++
>   arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 296 +++++++++++++++++-
>   3 files changed, 376 insertions(+), 17 deletions(-)
>
>
> base-commit: e2622a23e8405644c7188af39d4c1bd2b405bb27
Hi Maintainers,

It seems the patches get reviewed tag for a long time, can you give this

series further comment or help me to merge them ?
Thanks very much.

BRs
Ziyue

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
