Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67E31CAC5BB
	for <linux-phy@archiver.kernel.org>; Wed,  8 Oct 2025 19:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=27Gqtocs6V8LCT+tfCQLiJ3a2fWh3S0BagvtLlM64Tk=; b=BSN0JbF5zvWgIv
	xFzPHzHR93nzXU/0PPRdcH1fgtujma6fEFSyiRDeVBD1wH55Wqec2A2fvpv5bh8eZe9NCL1VgV5yv
	vRcxl+dpvaxPFi61fkXE2Q9q4u80EEs5H4HA1mWVIH3tyMwxHvl8vp7zcCA/zoTqH6bVb/E6TeQN0
	yWX5+IbdotMA/uhmpgiyPHczSMANdmp/eDsnMwWWtJtONs5TS46TD+qCd0/9iDxsPCdDjKIHUS6dr
	C2DJ9vDWTWBW97W7YM805wEPkpAWFO/hLhQO1omVud0I4fOfy9zRoSvISMbAOOosUJY2BvQWV8w1u
	IvCXn1aX5g+eFwbQVdIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6ZWi-00000004X2O-0NnC;
	Wed, 08 Oct 2025 19:08:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6ZWe-00000004X1Z-3nyA
	for linux-phy@lists.infradead.org;
	Wed, 08 Oct 2025 19:08:38 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 598I5dGe003321
	for <linux-phy@lists.infradead.org>; Wed, 8 Oct 2025 19:08:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Rw+KzFLht2yFEyIY3QTrtR4U
	azMsrTevmU+uxmGDP9w=; b=PSdS5V7S4B5LBHn/bBi7uCxcLnpqO98yWb2aZxkL
	lHs5i9bU4aIKC039KmHUdulwm0yCEhO4dWty9V8u9aY5N4T/vnWejxXYq64f/OZ7
	S63MguaLUpJpbI968PxkYiryqfI1Z8c6uhPzDa2WjBu9GrRcv0HB9ABQ5qlvLTAN
	la5vrp2lBgE1afSvxkRgwqZXXfwxNDosmbqLLrDPJAzNStM+qH3o4D+S/3f2DZdD
	oQjt3tOvTfi0Yxzq3l9gWBAOkmsA1gINUmpL9RpSm/0e/AJZ+GKQFaMotmfLl8NJ
	/JIn/yFtiD8sY+9NwjFQ6JPr1mQaZuQnKyaCF07D5mLYSQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4m0bk6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 08 Oct 2025 19:08:36 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4deb67c61caso5788281cf.2
        for <linux-phy@lists.infradead.org>; Wed, 08 Oct 2025 12:08:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759950515; x=1760555315;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rw+KzFLht2yFEyIY3QTrtR4UazMsrTevmU+uxmGDP9w=;
        b=Vr3aRBxm5vkL+9bsQ+37A68ZEKtYkhOblU2RTub7Q3K9orz57oYyO8gJfqppjyktP6
         pKTYhRNsFfmTFNrYA8WTdXVCd6SgAqONfN+Z21uf4D2tCj6vpy15qY9JGhYXrNHPsktg
         GCn/46Vwtcfpznf+scOT9ucXVabQFNulnx0Jnc9RnQZpRRc+zv1lxvV/4CwmQot6Q3DJ
         xLLRR9fYNQ0vdc2IFfXoRO3EzXk+FpCyRNM2AhwpVDB3VeAdd+VCBDzyvJzFCtxal6YN
         baoId6+teGLRgd5jCP19IUG2M1cqqKYIYA99LjrH322dMrc5i5/coagY3LRwDe+F+39b
         JYfA==
X-Forwarded-Encrypted: i=1; AJvYcCVrMb2dQ+kJRYO+f3Ucx/FIzAjMhYozm1+A7eh1QI8Rx3O/4FJJPtWBPaHtAXdQjSGr/7qYpay7kGs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxj0Yda1Oscx3CyBFrhzXWfUv5fWNuwIRgaTrFLyTXUUOJRagd8
	A1YprVxC3T6aSULSqc6p5Jth9X7eX+KTah3RHQ01rEwdIYWcwvLo/RKIYPn6bAsFTUsF/fu0TWg
	/Ulr3/OeN6zMrHAv5qO9zpMpzixVEOqop3mi+WvCpmFGjLLFUQcF6Wm8ZZ34Kqf7ezo1m
X-Gm-Gg: ASbGncs+UCoVXcYHFLGDkqNa0jbJEcjf3zMgPG8pnJb1QA9uMLK5AKuTCI0ZO1BusmC
	OBTALswAc4W/rp5HNB2aJ7oqRIeeg9A9nm4N6SFIE36rngmo0Ux0nNWQDyd5PmMUUTrtAP20z4x
	4IhOMD7SfA7SQYg6KVbdKvIdv/hcJD5SXqCEkEzLzeU73LPqdAELsBYpsn+K2dO3hhxbUmU9n03
	hURHfcAcPHS7PN08T9kGCQ2+wn4oGR8tYTMxGcpE4yu6kFlhKygwt/46qQ/eAh9ATMB75oQXCXA
	VebbqdPoQEFiV2ieYB57Rugl2xr5t/8Z+MwoHbzpvEqURoQNpBtOPlxI8pnRu/UTj1B5dss7tXp
	VDJFrE5jOfwChYPV0RqyS5U4F96P0sQiFG1zrqOa8KcC7BqjHxWeoof5Aow==
X-Received: by 2002:a05:622a:4206:b0:4dd:e207:fce with SMTP id d75a77b69052e-4e6ead64a22mr57960251cf.70.1759950514866;
        Wed, 08 Oct 2025 12:08:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE9dfHI26F6tmDQPEhiuoqrcfAbe3ngcx7SImkYRwO78fn/4c/EYGv3VDRX+xMY9m3o8N3kCw==
X-Received: by 2002:a05:622a:4206:b0:4dd:e207:fce with SMTP id d75a77b69052e-4e6ead64a22mr57959571cf.70.1759950514231;
        Wed, 08 Oct 2025 12:08:34 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-375f39fdbc4sm22092051fa.17.2025.10.08.12.08.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 12:08:33 -0700 (PDT)
Date: Wed, 8 Oct 2025 22:08:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: sm8750: Add PCIe PHY and
 controller node
Message-ID: <qref5ooh6pl2sznf7iifrbric7hsap63ffbytkizdyrzt6mtqz@q5r27ho2sbq3>
References: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
 <20250826-pakala-v3-2-721627bd5bb0@oss.qualcomm.com>
 <aN22lamy86iesAJj@hu-bjorande-lv.qualcomm.com>
 <4d586f0f-c336-4bf6-81cb-c7c7b07fb3c5@oss.qualcomm.com>
 <73e72e48-bc8e-4f92-b486-43a5f1f4afb0@oss.qualcomm.com>
 <8f2e0631-6c59-4298-b36e-060708970ced@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8f2e0631-6c59-4298-b36e-060708970ced@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX6DVdLCnd6UyH
 2gE844qink+kyxHTINvXKK6ajFVbIxGf7d20VEI1eTs41kwtpivG+gCyk26bycik3keQv0XsJrS
 hzFm1O/MydZaCvA89rEfG1dK4ghf4f7tvduryfOziLxCCbnd0GRybcB2OwDqGYMI6vEM6GHpNCR
 Fw/nqf74Wfes1JhKeypiIqq6bVryms8EjeVeKB5BrRzzPyy9jhBUYrFznCa6nyJHs1FFIOqdO7n
 1Eokn0lYdfkEy3P8558R71IFevINRM2sDh/S9/vZKuqvfdaCKcYxhmFcQBxoFsyv8Kc3Sxjs+Qx
 gH2X8vxcF17uMMUdCahr5r0T44XnTawT2wkatgTBfCmd0rV22fY+tcrl4qKaGPbCo0NeRsKI5Va
 ahnCjW0YXZYbwaP9PvTyB4K6FSSW1w==
X-Authority-Analysis: v=2.4 cv=B6G0EetM c=1 sm=1 tr=0 ts=68e6b6b4 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=8Rp3m3j2afKyq596a-UA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: jd7hO-8Z3dU_-3EkYUH56IB2l1ChCG5d
X-Proofpoint-ORIG-GUID: jd7hO-8Z3dU_-3EkYUH56IB2l1ChCG5d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251008_120836_948144_BAA108DC 
X-CRM114-Status: GOOD (  23.92  )
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

On Wed, Oct 08, 2025 at 11:11:43AM +0200, Konrad Dybcio wrote:
> On 10/8/25 10:00 AM, Konrad Dybcio wrote:
> > On 10/8/25 6:41 AM, Krishna Chaitanya Chundru wrote:
> >>
> >>
> >> On 10/2/2025 5:07 AM, Bjorn Andersson wrote:
> >>> On Tue, Aug 26, 2025 at 04:32:54PM +0530, Krishna Chaitanya Chundru wrote:
> >>>> Add PCIe controller and PHY nodes which supports data rates of 8GT/s
> >>>> and x2 lane.
> >>>>
> >>>
> >>> I tried to boot the upstream kernel (next-20250925 defconfig) on my
> >>> Pakala MTP with latest LA1.0 META and unless I disable &pcie0 the device
> >>> is crashing during boot as PCIe is being probed.
> >>>
> >>> Is this a known problem? Is there any workaround/changes in flight that
> >>> I'm missing?
> >>>
> >> Hi Bjorn,
> >>
> >> we need this fix for the PCIe to work properly. Please try it once.
> >> https://lore.kernel.org/all/20251008-sm8750-v1-1-daeadfcae980@oss.qualcomm.com/
> > 
> > This surely shouldn't cause/fix any issues, no?
> 
> Apparently this is a real fix, because sm8750.dtsi defines the PCIe
> PHY under a port node, while the MTP DT assigns perst-gpios to the RC
> node, which the legacy binding ("everything under the RC node") parsing
> code can't cope with (please mention that in the commit message, Krishna)
> 
> And I couldn't come up with a way to describe "either both are required
> if any is present under the RC node or none are allowed" in yaml

What about:

oneOf:
  - required:
     - foo
     - bar
  - properties:
     foo: false
     bar: false

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
