Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84F32CCD1BF
	for <linux-phy@archiver.kernel.org>; Tue, 28 Oct 2025 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+7NQUT7KsHHm2sqyt3PVnlz4cL/XHdQZf3PJaXKZ4jc=; b=OYoCLshr2iWuGr
	PQzftRnGNfRZUHOzKx9ZvepYW+WBD9Ago0z5U11dFCuT6LeiMwomeWkqVrNDbC+meZkSdly0QwXxC
	MT+IKbjQldW7OXJ9mxeVMu6+tuDyP/tFNnHsffADBWECB/5tqHu8rZVt9vP/2LGMv5BPIXYZSf/WG
	mpnTAc9hAqpbhcWwDvcFnONLe+wd+75UNqxPD4hK2WQjsI0PMc9YdeXSH2HQ1Ug/4xpHdWcP7/tWx
	ct5lCv5u1flHcNRGN4YnDft1AuUGl00dlV+II1tL06gMa+Lqar1hmbwQCVKLle9OfHYdWsV7t3gYC
	pRpTZvd+XycLUcWe+TfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDsDN-0000000GkBz-0XY6;
	Tue, 28 Oct 2025 22:30:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDsDJ-0000000GkBW-3nrX
	for linux-phy@lists.infradead.org;
	Tue, 28 Oct 2025 22:30:51 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SJlUXE2554380
	for <linux-phy@lists.infradead.org>; Tue, 28 Oct 2025 22:30:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=fwav1IUxYKqs4VwQSpfLoAKs
	uvsEteeWs9ZalDF4WYA=; b=H/HWLmngQ0Mibyh7Vxg8EQQn92J5jap8NQh69SY6
	f9H8OVSzoShKsUUQTNL5Ia3qJD7/d/b+qkICC0WkZCdusRW9gkNAsJgNECozSfqr
	jXVQtEBURopU4LvcCkqebD+byK4lnxajipYlN9smkyY7pF22rvK1HMsRaWjpLWwI
	MYsrbDg/3PS6HdiTPp+/b9N4M5FK1iEt0sQDNr/WzEUhz25U4278TfO+NiWIPvIO
	n/WjUIjJrOumIOCCdD9Wu2CjAPcpounzpJIkdSeTsp93eBVBSSoVOAjweAtM6jpc
	6grz5Y2OgpDxD+Qb0svklx/jBouWnFRLyXplHOH0sOQwIA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a10cbv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 28 Oct 2025 22:30:49 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ecf3420ce3so73215041cf.3
        for <linux-phy@lists.infradead.org>; Tue, 28 Oct 2025 15:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761690648; x=1762295448; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fwav1IUxYKqs4VwQSpfLoAKsuvsEteeWs9ZalDF4WYA=;
        b=V9OWKA2zcPwvaYYagiJAbR1PYTfHQ8KfUoaU6rxidrwA2F+GZK8tqj69xQhYYLvZXq
         X22GULKnECO7F3IXQt4++H/daM6GdfacGelIDoodbCOkFlBHlfsUUbqfhQIDG3JV6MF9
         0zmG2xuWNIAS4A2QCA75k2+xdXekZerhiFnThAdXl1TAUOYxO/LVkeDjbLimN2en2p/S
         U15kyFPE3k0oGQ69+dSHU/T6Uc8AoqNN0OASECN89Mavi83Z3vC53f48QD/JO3v8gScw
         FvqFHJbaY9LWO3EhEiMyuZBQ8LUuPi1ugcDhFtqSfgPrRW3r3RwyxicQqIHozS1Rtpti
         +RaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761690648; x=1762295448;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fwav1IUxYKqs4VwQSpfLoAKsuvsEteeWs9ZalDF4WYA=;
        b=djm5Dhjc1F47fuOp90s+KWMBl/4l+QNqoRQ/3Ljnyb93mQ1aptmODKpbNwAI5lZaki
         3SFkiIQMXWukto+ThOGTxw9nIr8mAwdlxPY30w1FC6l44Ogg5ZlvJ3x/gQAcuw4qXl48
         OfATjzSp7yI7YaxdcJ+b7rIv/F/OaXR3vBsRSRfVCmdaoWTyVT1fRanEQx16FcRfGl8b
         iD6yov4UCOHVzoTb9n3uoo6Syyc06s4Yd2CgAJgO+AokJf3BF6uc4QxotiUPA1ELckmF
         Wl9BJPFqINhicWF2eWzAEVtaLLOBGjZL2Tgi8q/9TuW87Yqo8RZ8Bzk2u+ecOSmgpe8d
         WBLA==
X-Forwarded-Encrypted: i=1; AJvYcCUPJneWr8KdOhsDmm9qnx7Yvc17wyAZZFSZbIF34hy49E698onYGE6cGf/+lah2eLzOwSiZ8BmOfIM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzQJCqAtZjZURsd3ZwuLasGB2j28w0+FAaqRNi0PgwpKyqoF/oI
	Mrj5XSrbB2f6YcYglsZCjzHyjMBCyUMK82bObC+7n2ivZCQdKFg4AGoRxbPbeOuGN9jB818aY+L
	Ttu4AKiYlt6lDyGfRYUrO2hwWqoEka9i/XCuHxpG19NCWNjDLa8gA2KU4hzFxz5XhqYvZ
X-Gm-Gg: ASbGncuGY9lSZhpKo98hr92iWGCTT/rt6zxQKSbI4LIZ91CC3REHBch+iVJGG70oDQO
	SoXVKFX8OsppuAO+CBG45ZhJtmyeISE50bq6KBTJIttoppmaimFpVRiK77SBCgUeA9FmFVGJGsp
	Wcb3b7DfQT9nT0VZ6oMggcYuXHOLNWqJQaMJX5MFwS1dSkm0M73AZVcSXlSS7YIk2SSWOuEWhNC
	2XRR5+vBJTs3vkhRQosYFaNlwASahj4RtHavhmD3tGjxSN5YHR34H0idwBAH1GSa7ozyZhWn/u8
	JBrBlu+2eCxj0oufidxdtu5DzTnBrmHfSjSaFWIqggVx6gI5vcNJzAFQG8f3Zu3IP3/YFviRcwt
	gaTZdB9vzfZZK5dql3q5EIOrgBcimD3dprHzKYd1A1sZ4mkHfviNIVKNpatQYmGR1CLsRKZNkgC
	kUmfv+T5uWj+9i
X-Received: by 2002:a05:622a:17c6:b0:4e8:9f46:402e with SMTP id d75a77b69052e-4ed15c7bf1cmr13100331cf.40.1761690648083;
        Tue, 28 Oct 2025 15:30:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/d7lNS9futW4CsSn+fTGrGsWFDbeBBpVaN8gUsAhRPKt76RRIf2y8i7yGHEXORdu2OicfJw==
X-Received: by 2002:a05:622a:17c6:b0:4e8:9f46:402e with SMTP id d75a77b69052e-4ed15c7bf1cmr13099981cf.40.1761690647629;
        Tue, 28 Oct 2025 15:30:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-378ee0c61a7sm28518321fa.28.2025.10.28.15.30.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 15:30:45 -0700 (PDT)
Date: Wed, 29 Oct 2025 00:30:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 6/8] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Message-ID: <ysekkn5mxwq47bnra5ocwfeacfa2gujhmgvivorupn73npsrnl@2cig7cjdvhuy>
References: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
 <20251024-glymur_usb-v6-6-471fa39ff857@oss.qualcomm.com>
 <ktjmbmfd37tm6ij3pqbrbhfounizz4znmqvearvh4spvuky6i6@pw5czztggbjm>
 <7ae01221-868e-d5dc-4297-8006a69e7a7c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7ae01221-868e-d5dc-4297-8006a69e7a7c@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDE5MCBTYWx0ZWRfX83miADs+6Tiv
 mOnwtRtU0lUZkTlJkyEiKaok4vOF4oFh2U/OE+WZOIrHLEiYGiRjLfEg2vigiuyClHS3rKt59Ik
 4MBkz8UVDuWbbjlRF75jC7QhB39HuEcfFQytMzKSIfRQh5xLnICXznV/6M+1eItYVnVB/oBoJNW
 0Orz8ZB0tGTWgyQLdX5pdI+PIaGgQL95HVTwbS7FJhWO7SZE+bmVUPw1HwwxMU1Ti9KS6muur4n
 Xz2Xe0/DfWqL24JjYYvQ+345dzhWRkgi5Kp60BK/vBZbQ1PeTBVxj/qTOd4HQ9TR7VABV/DCWnK
 wvGnjBq+f0ZPXXzPURiX3PrFSNhQ+CRPDRULfNCaUjidTje1CUs4Wevo0LXGAzqrVxAhY9QnJmh
 aGV+StiYfLpVCDwjWVi3irGnEnlfag==
X-Proofpoint-ORIG-GUID: UXvDHuTiFIVw9m6JhESfaS9Ag-z2SyC6
X-Authority-Analysis: v=2.4 cv=EKULElZC c=1 sm=1 tr=0 ts=69014419 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=jibdWOiqirJgiXNZ0pYA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: UXvDHuTiFIVw9m6JhESfaS9Ag-z2SyC6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 phishscore=0 clxscore=1015 suspectscore=0 adultscore=0 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510280190
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_153050_049392_EBB7E875 
X-CRM114-Status: GOOD (  30.64  )
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

On Tue, Oct 28, 2025 at 03:15:33PM -0700, Wesley Cheng wrote:
> 
> 
> On 10/27/2025 7:21 AM, Dmitry Baryshkov wrote:
> > On Fri, Oct 24, 2025 at 05:47:44PM -0700, Wesley Cheng wrote:
> > > For SuperSpeed USB to work properly, there is a set of HW settings that
> > > need to be programmed into the USB blocks within the QMP PHY.  Ensure that
> > > these settings follow the latest settings mentioned in the HW programming
> > > guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
> > > new ways to define certain registers, such as the replacement of TXA/RXA
> > > and TXB/RXB register sets.  This was replaced with the LALB register set.
> > > 
> > > There are also some PHY init updates to modify the PCS MISC register space.
> > > Without these, the QMP PHY PLL locking fails.
> > > 
> > > Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> > > ---
> > >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 288 ++++++++++
> > >   drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h     |  17 +
> > >   drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h    |  12 +
> > >   .../phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h    | 639 +++++++++++++++++++++
> > >   drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h   |  33 ++
> > >   .../qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h   | 224 ++++++++
> > >   drivers/phy/qualcomm/phy-qcom-qmp.h                |   2 +
> > >   7 files changed, 1215 insertions(+)
> > > 
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > > index 1caa1fb6a8c7..d1534ed7200b 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > > @@ -30,9 +30,11 @@
> > >   #include "phy-qcom-qmp.h"
> > >   #include "phy-qcom-qmp-pcs-aon-v6.h"
> > > +#include "phy-qcom-qmp-pcs-aon-v8.h"
> > >   #include "phy-qcom-qmp-pcs-misc-v3.h"
> > >   #include "phy-qcom-qmp-pcs-misc-v4.h"
> > >   #include "phy-qcom-qmp-pcs-misc-v5.h"
> > > +#include "phy-qcom-qmp-pcs-misc-v8.h"
> > >   #include "phy-qcom-qmp-pcs-usb-v4.h"
> > >   #include "phy-qcom-qmp-pcs-usb-v5.h"
> > >   #include "phy-qcom-qmp-pcs-usb-v6.h"
> > > @@ -46,6 +48,8 @@
> > >   #include "phy-qcom-qmp-dp-phy-v5.h"
> > >   #include "phy-qcom-qmp-dp-phy-v6.h"
> > > +#include "phy-qcom-qmp-usb43-pcs-v8.h"
> > > +
> > >   /* QPHY_V3_DP_COM_RESET_OVRD_CTRL register bits */
> > >   /* DP PHY soft reset */
> > >   #define SW_DPPHY_RESET				BIT(0)
> > > @@ -97,6 +101,7 @@ enum qphy_reg_layout {
> > >   	QPHY_TX_HIGHZ_DRVR_EN,
> > >   	QPHY_TX_TRANSCEIVER_BIAS_EN,
> > > +	QPHY_AON_TOGGLE_ENABLE,
> > >   	/* Keep last to ensure regs_layout arrays are properly initialized */
> > >   	QPHY_LAYOUT_SIZE
> > >   };
> > > @@ -259,6 +264,236 @@ static const unsigned int qmp_v8_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
> > >   	[QPHY_TX_TRANSCEIVER_BIAS_EN]	= QSERDES_V8_TX_TRANSCEIVER_BIAS_EN,
> > >   };
> > > +static const unsigned int qmp_v8_n3_usb43dpphy_regs_layout[QPHY_LAYOUT_SIZE] = {
> > > +	[QPHY_SW_RESET]			= QPHY_V6_N4_PCS_SW_RESET,
> > > +	[QPHY_START_CTRL]			= QPHY_V6_N4_PCS_START_CONTROL,
> > > +	[QPHY_PCS_STATUS]			= QPHY_V6_N4_PCS_PCS_STATUS1,
> > > +	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_N4_PCS_POWER_DOWN_CONTROL,
> > 
> > V8 PHY should not be using V6 register offsets.
> > 
> > > +
> > > +	/* In PCS_USB */
> > > +	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V6_PCS_USB3_AUTONOMOUS_MODE_CTRL,
> > > +	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]	= QPHY_V6_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
> > > +
> > > +	[QPHY_AON_TOGGLE_ENABLE]		= QPHY_V8_PCS_AON_USB3_AON_TOGGLE_ENABLE,
> > > +
> > > +	[QPHY_COM_RESETSM_CNTRL]		= QSERDES_V6_COM_RESETSM_CNTRL,
> > > +	[QPHY_COM_C_READY_STATUS]		= QSERDES_V6_COM_C_READY_STATUS,
> > > +	[QPHY_COM_CMN_STATUS]		= QSERDES_V6_COM_CMN_STATUS,
> > > +	[QPHY_COM_BIAS_EN_CLKBUFLR_EN]	= QSERDES_V6_COM_PLL_BIAS_EN_CLK_BUFLR_EN,
> > > +
> > > +	[QPHY_DP_PHY_STATUS]		= QSERDES_V6_DP_PHY_STATUS,
> > > +	[QPHY_DP_PHY_VCO_DIV]		= QSERDES_V6_DP_PHY_VCO_DIV,
> > > +
> > > +	[QPHY_TX_TX_POL_INV]		= QSERDES_V6_N4_TX_TX_POL_INV,
> > > +	[QPHY_TX_TX_DRV_LVL]		= QSERDES_V6_N4_TX_TX_DRV_LVL,
> > > +	[QPHY_TX_TX_EMP_POST1_LVL]		= QSERDES_V6_N4_TX_TX_EMP_POST1_LVL,
> > > +	[QPHY_TX_HIGHZ_DRVR_EN]		= QSERDES_V6_N4_TX_HIGHZ_DRVR_EN,
> > > +	[QPHY_TX_TRANSCEIVER_BIAS_EN]	= QSERDES_V6_N4_TX_TRANSCEIVER_BIAS_EN,
> > > +};
> > > +
> > > @@ -2528,6 +2784,27 @@ static const struct qmp_phy_cfg sm8750_usb3dpphy_cfg = {
> > >   	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> > >   };
> > > +static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
> > > +	.offsets		= &qmp_combo_usb43dp_offsets_v8,
> > > +
> > > +	.serdes_tbl		= glymur_usb43dp_serdes_tbl,
> > > +	.serdes_tbl_num		= ARRAY_SIZE(glymur_usb43dp_serdes_tbl),
> > > +	.tx_tbl			= glymur_usb43dp_lalb_tbl,
> > > +	.tx_tbl_num		= ARRAY_SIZE(glymur_usb43dp_lalb_tbl),
> > > +	.pcs_tbl		= glymur_usb43dp_pcs_tbl,
> > > +	.pcs_tbl_num		= ARRAY_SIZE(glymur_usb43dp_pcs_tbl),
> > > +	.pcs_usb_tbl		= glymur_usb43dp_pcs_usb_tbl,
> > > +	.pcs_usb_tbl_num	= ARRAY_SIZE(glymur_usb43dp_pcs_usb_tbl),
> > > +	.pcs_misc_tbl		= glymur_usb43dp_pcs_misc_tbl,
> > > +	.pcs_misc_tbl_num	= ARRAY_SIZE(glymur_usb43dp_pcs_misc_tbl),
> > 
> > DP tables are missing.
> > 
> 
> Hi Dmitry,
> 
> I think I discussed this with Abel on the previous patch revision.  At the
> moment I did not add support for DP, so we shouldn't add the tables, unless
> you think we should still have placeholder?

Please add DP support.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
