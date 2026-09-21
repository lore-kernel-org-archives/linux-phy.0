Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A44D0C982DE
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 09:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LQkb+f8CebPPyHsCiUk8ea2lDe5ivhlAS6DrfOiiOoE=; b=xV0DAnZU6YvPqU
	dQwEqlbZFlMUZySTepUYoeXeMuclaCccZea4e+5Tc1VOgKyaPJsS/LnM3Ss7cAbOvHPzYB6aSGByw
	zpld0GkzvTM8hQ0NVzK2SmD+hgma3BNnjcr6dI5rmy4P8qTuchn69dR/vCt0axJDLjBAhsTF2jGR7
	yD7NUduDcLLuV3cOJTsAFjcOkRjgI125/9aTqzOS4NkLBfLBws20TZuR2TCBRLkbtL5xA0Umvmfb7
	rHVj8dBApxhTp6aSh5Zt6ICm5kqB0bE8DkyGPB9xro96gh8VUbXysmWdHYqWlNFk23lCzcXDx4DpR
	YMnbmkRlgnH5pAmqIudA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8a6n-00000001TRZ-0iyP;
	Mon, 21 Sep 2026 09:14:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8a6k-00000001TQz-3Q8l
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 09:14:43 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68L7AOIL3351569
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 09:14:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Xo9mLOJxXk39j262pHvfRN+qFVuAlK5ekUKavXq4SFQ=; b=M4KLDfDAps85j2C6
	LKJhhXOw7xNehq1o9OC8W1LGSDa010tFXeX5/IFyNS2oDZev2izY1C4dmQgwxCJr
	R3aqh37YDcE9gfLrajdJwXcjUnLBMQDeimcjQE7NKzfeHB/rzeS8JhFgFaCOwlIr
	aQ70Nuys7yUeLoIOMrObEeGYII2KjRWgObxHj1h/lHiQrSygZltoiX8ft6q34jtt
	CqIaVtMsHTujW/r+hoxEK4uqXqfJeo4KhsRGKZogLe38hMpnraGdzRFDJrjW+vT1
	FtY7xipxEv49VBy7yjvuYqHF/285UsdD8QfathYFU5XR1GJpw2UFgfTt+YWc5e3n
	3z81/w==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gtq799w3v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 09:14:38 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-cc7348bd56fso1937807a12.2
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 02:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789982078; x=1790586878; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Xo9mLOJxXk39j262pHvfRN+qFVuAlK5ekUKavXq4SFQ=;
        b=TEc25YwGveQx8KqpncOm/n7Bwu0ePGHzhaDMMzY75Z8SFkRfVT10O0WgTAywJjs4OP
         /5TryTjFbPWByIfoxNa+BhYrkVacg536jMib8yrmWbTVrOFSvTEnhcvg62C20lkUZ5h1
         C3KHRFFsLmCvTJGjijdakXgV6W6anXNvNba0gp10N8gFn+bEwSCIQWkV8mIAeu4I2YOu
         lcoEc+bKH0Uhz04iYGbDOIIVrBN+3hs2Lb2n/01ugH9FRTjcsmG0Imi+Y+odTSqLaDi1
         womQuNZBOPcjXWdA2qPaWYpJQsO3tvjZvvQ2vb0r3MBaDrI799nnPJ7i9V6Gtx5lyLXs
         LBwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789982078; x=1790586878;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Xo9mLOJxXk39j262pHvfRN+qFVuAlK5ekUKavXq4SFQ=;
        b=ikWIcnac72VDNexU0QBczjtPB2MxH8TNX6wwQWVyxLn8owF+F6iiRRZ3I4pJpsgxyL
         G8ViVXzo6Z9YwCHEwmCVIm9y/+r6wSulv/0d1LUgm7uMacXECh5LJ6QwAIxeXcNqmIBJ
         QZrwrZ4NUbP9SBOrUYsuY16dhHsoNhTGRmFgubrOUhv1oZi0KSKrTNgLr6zSAmzZjp9p
         f499mAbTHXMhNtxRsWMKN3wtTOgsZY950WO+v6pbokk2lNYoUn5cYUH7hITkGRqE/YVM
         Vpf8i34W400Ph9lCVpVJ7Ec0C1e/DVkJsvI7G6ed06zhz+ZZPTyV6TnXusVtSQSmDavd
         rUaQ==
X-Forwarded-Encrypted: i=1; AKwUvBzvp1yGLIp0Xitt+6Hmkm//y0Px35D1pWrvvFMvKhjGbDM1u8zhAeD4zGHLcZpo759sLNOD5NlIPIY=@lists.infradead.org
X-Gm-Message-State: AFuF++lnlMGUbDF8UX4fl++O64BT9jVXY1h31gLKL9X9CtouozCc/TgW
	qRYSXBHigDmxFNTERj52LH2xWINe+snjtui/Bj0tFvAasAEl6V0iqGrnLm3XRTTsb61GVbIpeft
	gtevhQm//QP9Jo/G0zWS5slOOkg23y8DRC14gYfhPQ6QY5iOXr3dwpOOR3DXFmDxq/hW3
X-Gm-Gg: AYBFou3oGe6QxZWW8ak3lwNh2xSUzOImcieUhd0bwnd1PHsTusqfpFRmfisHGnmPdO+
	hQN/3s7CrvVlMVUskHYn7AnOmCUx8BnZ7RZ0eXweH7HVdeB/FV6HPxH8eRvKPt0IlR1jMI7P0ex
	LOjikhnmKeJyYAbnM1tC64fmSw0rl5qiiuFjDyW/21kOt4fwgGtKOkW7W/15otxdYRtlViP3iPh
	z6e8fj6QUG0FhYpI3ynxCZabewLKAY6ioisrNtDpxcUiaMl9IMJ0WfRR5P7SDlSzK7dZpqpbymQ
	cxYabdnR129Pz/E0ck1lMT7Pgxg0I7WN68HUxOboinE3Ws5eoyeA30B51MbyzP3hBjXn4Gkne2P
	IO/b+WXMWZgrbGVWlJgvIXTryv7h3KBrIgEhbcWJq7d7T
X-Received: by 2002:a05:6a20:7f8a:b0:3bf:6222:2e7e with SMTP id adf61e73a8af0-3dd8c3fd41cmr16576696637.4.1789982078296;
        Mon, 21 Sep 2026 02:14:38 -0700 (PDT)
X-Received: by 2002:a05:6a20:7f8a:b0:3bf:6222:2e7e with SMTP id adf61e73a8af0-3dd8c3fd41cmr16576663637.4.1789982077898;
        Mon, 21 Sep 2026 02:14:37 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33c342b3c67sm18923840eec.10.2026.09.21.02.14.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2026 02:14:37 -0700 (PDT)
Message-ID: <321460f8-f24a-4e91-be17-50f1639f8e76@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 14:44:31 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] PCI: qcom: Move PHY init and add PHY reset call to
 align with HPG
To: Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20260915-align_pcie_init_sequence_0916-v1-0-0b2195836f30@oss.qualcomm.com>
 <20260915-align_pcie_init_sequence_0916-v1-1-0b2195836f30@oss.qualcomm.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <20260915-align_pcie_init_sequence_0916-v1-1-0b2195836f30@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=aJ9lOr9m c=1 sm=1 tr=0 ts=6ab0f57e cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=WcHuybdFNItx7B-R-rUA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDEzMSBTYWx0ZWRfX6EtlPjuNzAda
 PNS+ETRBbmvZao00p7TTmFQ6BaDgKXvC2/DofD8EGpWEY24RecBiaj8wzglEzFwNu8KljN8ieqj
 vjWSwn3SZNtApPonka80BO9rQLOdpAE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDEzMSBTYWx0ZWRfX+CnMkXVxChoX
 W5H5iCQbXaZ87IdSry9sHWGELSxutRZBqB4NfUEvR772gyzzBmst4g/kGgIusbwH0LvitbEPxVt
 pNaw9WYU9DDAjUskKHrv1EQMGC6GaQZn+VJUpPllNNCYmek/lErCjB/XTx5gIwKRBfDwHDNp661
 0OC7F5ardK8MxuC2Sb8ZqcOkPvsNP10FITtPFKN/WS3L/Xk+HvDaz9ku9VR1tJqOGg1Q6VqQfRn
 Q0WoOvQfb30G9vgg8Gz++kbyBBWsMPZTFR4oHcXHlfo8M7Y6WHlrxtpJ8DanEIGUunWqMBrzTGP
 AUtRK6E6ToXyEhzT2E0WmZoFaSXiVWSpN2Fa2SJt7TbIixUCA7PDNvWIeyhbJZncBNRKKxJ00Ck
 EXX4AvBAfG7F2VsRq0F3L/gs447pWasdQnk7Qlew9VsspJCk5Re+vm9w3G/SWBgpU6XfDdH+LjI
 NbvO4pIgjjPSouPHC2w==
X-Proofpoint-ORIG-GUID: dUmjDlViBZoj5xSQDtprQFXOZw3tkV9O
X-Proofpoint-GUID: dUmjDlViBZoj5xSQDtprQFXOZw3tkV9O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 clxscore=1011 bulkscore=0
 priorityscore=1501 suspectscore=0 adultscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609210131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_021442_886844_2B44C477 
X-CRM114-Status: GOOD (  18.78  )
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


On 9/16/2026 11:34 AM, Qiang Yu wrote:
> HPG requires the controller/PHY GDSCs powered up and all controller/PHY
> clocks enabled first, then the controller's reset and the PHY's reset
> toggled together as a group, PARF_DEVICE_TYPE set right after, and the
> rest of the PARF/DBI config left until the PHY is ready.
>
> Make use of phy_init() and phy_reset(), and change the call flow to:
>
>    qcom_pcie_host_init():
>      phy_init()             (PHY GDSCs/regulators/clocks up)
>      qcom_pcie_ops::init:
>        enable controller clocks
>        assert controller reset
>        phy_reset()           (toggle the PHY's own reset)
>        deassert controller reset
>        write PARF_DEVICE_TYPE
>      phy_power_on()
>      qcom_pcie_ops::post_init  (rest of the PHY/PARF/DBI setup)
>
> phy_init() moves into qcom_pcie_host_init() and phy_exit() into
> qcom_pcie_host_deinit(), right before and right after they call
> qcom_pcie_ops::init/qcom_pcie_ops::deinit.
>
> Apply this to qcom_pcie_init_2_7_0()/_2_9_0()/_2_3_2()/_2_3_3().
> qcom_pcie_init_2_3_3() was enabling clocks after the reset deassert; move
> that ahead of the reset assert to match the same ordering. Also add or
> move the PARF_DEVICE_TYPE write to right after the reset group in each of
> those four functions.
>
> For most platforms phy_init()/phy_exit()/phy_reset() are no-ops against
> their phy_ops, so moving the calls around has no effect yet; the PHY's
> clocks/reset actually start being driven this way once a later PHY driver
> change implements phy_ops::init/phy_ops::exit/phy_ops::reset.
> phy-qcom-pcie2.c does implement phy_init()/phy_exit(), but moving the call
> site into qcom_pcie_host_init()/qcom_pcie_host_deinit() keeps them at the
> same point relative to that platform's own clock/reset programming, so its
> init sequence doesn't change either.
>
> Signed-off-by: Qiang Yu<qiang.yu@oss.qualcomm.com>
> ---
>   drivers/pci/controller/dwc/pcie-qcom.c | 165 +++++++++++++++++++++++++--------
>   1 file changed, 126 insertions(+), 39 deletions(-)

Verified the PCIe enumeration in IPQ9574 and IPQ5424 and it works fine. So,

Tested-by: Kathiravan Thirumoorthy 
<kathiravan.thirumoorthy@oss.qualcomm.com> #IPQ9574-RDP433, IPQ5424-RDP466


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
