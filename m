Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76E12CD8C88
	for <linux-phy@archiver.kernel.org>; Sun,  7 Jun 2026 10:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=67D/6TDvw/NAWZRroyj7eVQH1q3ttKkoTBcVuyDO26I=; b=JChfbPetgEgtRy
	QyiO76pNjwSVAXDWERGYrceAOPyzZ6MdM0ZJAeUYQpZXUdnzz5E2CfmaV7i+mDsC+F2iLkTHKUmSk
	be1pZFOBnu18k5RRWJgZCSj+90oTtGpcuOxpZF1geybNv6PNU7D4GSBfhMmobJeSOL3OYBFEjnI3f
	VbJg5H4uZIoDmRH+2hjI3JwmLrVOkt3wPE0hjO7uZSEvgqAsu9OU7rY8ElkLDafAtb8VYy3foqt+i
	LfFi8T+slw6DNo5NnMKov7VuYNe1FH/GYFbMAfpWaeUk1RyhkOLMz1xGT70md3m62jgXwGt1MxQiL
	AsJ9ED+I00TNoZGmB9ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWAko-00000002C6R-1s4Y;
	Sun, 07 Jun 2026 10:29:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWAkl-00000002C61-325o
	for linux-phy@lists.infradead.org;
	Sun, 07 Jun 2026 10:29:17 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 657ADmh0280007
	for <linux-phy@lists.infradead.org>; Sun, 7 Jun 2026 10:29:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=maV6ymIW+tN4bTb51Mh37tnM
	ZGwL9fhMtkQZiKNq0Jo=; b=ZAdl/BdgOqdteeXLfmxajMSt2D/VX4kOEy74z8B0
	6D0WNqWQkwPm29FGw1ajGny9GPfwk2CaPdfxWiMy305DMRPP3O8VL4sHVm21GdY1
	j3ztiO5/h/dy7JdxePkj/6GDm2h68tBggF0tgmMoiVLOr3i/iDy27LqG6wnMsgIy
	Vz6o25g7QfSbt8tTp+M/jtWfiYUiMujM+AG3Ut+dZws1utS53H4BXhk+46mXUD74
	Cf9DXCteW9/7WMOvk+Wp2ehIQSFrW3yTQk9WC9JT7XAn6cEGFORvyspS7sDv4rFr
	ZuulobkEzzV98XTTRI5MvzDwi3GLEBgshjkcHjQ8JdOnFw==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4embx6bgp3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 07 Jun 2026 10:29:14 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-963d9b6b92dso1475937241.2
        for <linux-phy@lists.infradead.org>; Sun, 07 Jun 2026 03:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780828153; x=1781432953; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=maV6ymIW+tN4bTb51Mh37tnMZGwL9fhMtkQZiKNq0Jo=;
        b=ayKJvE7naIeV3DRftNb0HIyfgFZZPWmKIA+/rYzzpMmHQNe2BUIxD2NHpptG1LafTN
         HDXxoLdW27RvUzH29bhNI7OSuD1wWyrECcHQhg5nLvAj7sU/jxvD8n9VqFegTbwNvM+Q
         pItJLdR2X3DFzE/6isHqvM4gsasPCSy5/o9Oc2MtzltcpjgW9yr2wvg8B/k7yuj3UbSq
         wMg/4FxSMDiTJGcH3mfUMuqaJPx0tSGHY8Zf3e0ZiLuQ/qjadGfJmhC3mLFAUv0DhcJ6
         sLhFc0T3SA1YZqcv7lLKTX4fTb+tn01tbWwPDlgNp5SHuPjUxKZpapPwraoTOKU/Mvqj
         kGgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780828153; x=1781432953;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=maV6ymIW+tN4bTb51Mh37tnMZGwL9fhMtkQZiKNq0Jo=;
        b=WadkZ9VyE5wsHIojQoOIFUMXXQChnFP/hzbkvQjYgfFzRkJJnxdtWNKb6uk1vo3FJ1
         01iuieUVEb0KkJsNhFQqtIGG0tnHdvQuZnzvADEXjPw1hbXVwdGJ2cEEpyhfAGH6oYtX
         Q1PgydsNrOGpiwokdRvPE3IYFA6Q8+pNQyGGx7OXfkA8v8DkBt8BtWRHan64+t6h7+y1
         702+I0nwESIZdwwjn2h8KaquMe5jMybOaJWOnYybg2xLTF6EWdTKAs3UcNuWZptQi1MR
         PjXIF5Z+K/bRJ3ZDQyz33dz+wMd0dQbSqc22NgTBtaAm24tm37PH59PcR4DRrphNZkQw
         HecQ==
X-Forwarded-Encrypted: i=1; AFNElJ/AuR2BZ1eP0G/p2ilXfSiECtLk54NuId8RwfcGmNYiSwz/UvX3uGmMolev0brIhT9tcEhMUWp+WQ4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1M4JNvma35w/pDgJTHJPtTwNgyx64s2VNYc5oStUeihN8e73d
	gDi2amofCjQVuXorNca9RSXAHr8h3JUARTWERdGYlFOevdtlovHmJQwBFa9FCWEpG2ux5/r3+oT
	+wPBEZvP9ikswh1jt5u9AKmgEMb9TECDJtX2oku3UWBDXDaCjiBNKZreFdqgMVI4jAMMA
X-Gm-Gg: Acq92OEoLfyPJ+29DyZmInOkuxgtX/OwFnV+B1SdFFApzX8IygNb56Ddwfd9NYHcrMo
	EECgRYXhosG0U+/novuxK5SWuehHs73lQ6PVXNa+NGq6avz9zrFdJmmMHF9Dpejc0FgLdT0NFIo
	M5r9lelMlKZY1bFYekUmZae91OSWjcklm+iCkO9ujmnUuVqQm4vAy0Tf66it8pRoqy2sIZVDF/U
	f4abnI15MHLQr1qq98xs1m4HbrYWFgm2JgfpVZRA/KtTZ+aGP8eZLbMheneW95q8o8qIAaukqVG
	aHfe32QQ3J1j18BsKisTmQx2Eyt0e1oUFzGv6ELZsWb0jTFhSA6sWaVgOuvfheH+as3qoyF1bb7
	ZTdnqhARsJRe4mNrBhO7MXHbnvqM05CN+7dYwwhv+irIPdp3zna04YNuxCCtLXPeAIdDSDcwtjm
	o9PC4QM1KggAD4nMdNc7+AdQ5KfxgpSxN1bLtYmqxr1qLtpg==
X-Received: by 2002:a05:6102:5094:b0:631:26f6:701a with SMTP id ada2fe7eead31-6ff156acf6fmr5264044137.29.1780828153531;
        Sun, 07 Jun 2026 03:29:13 -0700 (PDT)
X-Received: by 2002:a05:6102:5094:b0:631:26f6:701a with SMTP id ada2fe7eead31-6ff156acf6fmr5264023137.29.1780828153136;
        Sun, 07 Jun 2026 03:29:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b8ed8e0sm2995208e87.2.2026.06.07.03.29.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 03:29:12 -0700 (PDT)
Date: Sun, 7 Jun 2026 13:29:09 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v2 3/3] phy: qcom: qmp-pcie: Add QMP PCIe PHY support for
 Eliza
Message-ID: <k37nby6lnczb5qajku2shpff4rsisyynlfmzu46lhojl5eiwqo@wkpy2tbeoa3b>
References: <20260601-eliza-v2-0-6b44c9c23d5e@oss.qualcomm.com>
 <20260601-eliza-v2-3-6b44c9c23d5e@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260601-eliza-v2-3-6b44c9c23d5e@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=cvmrVV4i c=1 sm=1 tr=0 ts=6a2547fa cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=M-jGJTmE-ygQmRKCDXMA:9 a=CjuIK1q_8ugA:10 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA3MDEwMiBTYWx0ZWRfX/QqwPD77uzTt
 59g4LmOJOI+T2y4RwS9Hw+q41CKsZKismWQ4yyOw42fbXJRFUGOf5fu/NfkfDxVrDpFVBcYpaWP
 8RFB8S2rs2QvCJwxP3NN8oa5DEIiK8PaoocRpdiwZQLFhWCxDAMR5tI75jXhGefO2JTIyUDQe3E
 qu8C2o5TULmEGBKYzzy1SwCNAbo3XHfLesEokDLAzj27q2EmnroDNDCSF5x3iyX06x1vSEnIL/a
 qhNzU6+qxeMyPYj+ag1/2X7+1BfYdgdD7VqZosQAY/NTcPRve0DckF0amfV/8wrLXZ2AV9+zqtz
 +pIC+SewalWG5N3IU/mTM+uR0ksdztEH0EEZBpC6YoDFYBRowEXfcaTG0u3MOPkdbSfGQsQSz3k
 /jN5F7UpBXQ15eaqc9f45CNcRRp0FNj9TYpeAZomwgZBn2CSYfemZtQ6/WbsBsHxkDhvSLW+V58
 DARIvN6nBbSnKYuVaWQ==
X-Proofpoint-GUID: AMH5EUzVuORBlxahXh-ITnJxx95FMv1l
X-Proofpoint-ORIG-GUID: AMH5EUzVuORBlxahXh-ITnJxx95FMv1l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-07_02,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 suspectscore=0 phishscore=0 clxscore=1015 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606070102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260607_032915_885522_981A3E71 
X-CRM114-Status: GOOD (  17.99  )
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

On Mon, Jun 01, 2026 at 10:59:46PM +0530, Krishna Chaitanya Chundru wrote:
> Add QMP PCIe PHY support for the Eliza SoC. Introduce a new Gen3x1 PHY
> configuration with Eliza-specific initialization tables, and reuse the
> existing sm8550 Gen3x2 configuration for the Gen3x2 PHY instance.
> 
> Also add the missing QPHY_PCIE_V6_PCS_PCIE_INT_AUX_CLK_CONFIG1 register
> definition to the PCIe V6 PCS header.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c        | 139 ++++++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h |   1 +
>  2 files changed, 140 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index fed2fc9bb311..257b4df965c3 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -198,6 +198,112 @@ static const struct qmp_phy_init_tbl msm8998_pcie_pcs_tbl[] = {
>  	QMP_PHY_INIT_CFG(QPHY_V3_PCS_SIGDET_CNTRL, 0x03),
>  };
>  
> +static const struct qmp_phy_init_tbl eliza_qmp_gen3x1_pcie_serdes_tbl[] = {

Thisis exactly the same as SM8550 table, except for three extra writes:
QSERDES_V6_COM_VCO_TUNE1_MODE0, QSERDES_V6_COM_VCO_TUNE1_MODE1 and
QSERDES_V6_COM_VCO_TUNE2_MODE1. What are the default values for SM8550?

> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE1_MODE1, 0xb4),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE2_MODE1, 0x03),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE1_MODE0, 0x24),

Other than that, looks good to me.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
