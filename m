Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A88DE9B37F
	for <linux-phy@archiver.kernel.org>; Mon,  2 Mar 2026 13:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RxV+AgeZFSenGrAtPDw5NFmt0i0ZJHozUdZMGdtM3vo=; b=fYY4tHKVoH9Vaf
	96jnY5iEEjwNsUvLNMJWSktExzrZCSrflRoYY56b0p7ShB1sgM/416f8vD9FHeByPzq/OYcLCn7bL
	/ZmD7Q/nNT3jc1RrPbUexvHVyWKnqLxPMpcP3n4hFBKBRHauEM9FWWFzLQUwGEMDsD8Q8ybZsKvaw
	IM7eHvMMGVsr1hs+c62XJxbtY/sQHGHMEluqSlyV13S34fCgCf6KzqYeQJiWeIQX+d58JEeXXE7l7
	HK9uj8KvJ+Ql4mlXcooxG+d/NI1kxm6Dm2baS2Ai5W1Ofi92iZKhBlrta2ze772xFMBs8iZBzgqFw
	x5plSCnvU/zWQu2lLsRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx3Qt-0000000D7yb-46Ra;
	Mon, 02 Mar 2026 13:35:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx3Qr-0000000D7xj-0RUw
	for linux-phy@lists.infradead.org;
	Mon, 02 Mar 2026 13:35:34 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 622B3ebd3862850
	for <linux-phy@lists.infradead.org>; Mon, 2 Mar 2026 13:35:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=P254J3MDCNQW2brjbXOB4OcJ
	K4ugiVnJqpO/rx59Igg=; b=Fj5IHgDdkP+FCNvtufLBSWDhMSz9HSeoxIHnagz6
	CPBxi9yOSl4F5mrLO44wnau559mHGHVOz6I99LOcfVMYiRiFLi0M9p7xGX97etvc
	oawoAP0ZbqTKZ7W9KczTWGikoZQ1FrwWz8CUPWUyUatfwmFE4Q29U5DzybfFagS3
	QH8JnZeGQawBFr4Wtrg9dSDZrcNN9wK6K4e7SfAH6Djx0o3YXqT4OrypIdV3Oji+
	eDGqcjWvL9GSywnX13d56DomFfu6RJAxCwuN21ipPCJ32+z6FOPgSbrQ+Cng+lBU
	KNPRE6sFxrX798oJi47/j1foOxWDN+a9rjDP8zihmZ0Ykw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn9bjge96-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Mar 2026 13:35:31 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70e610242so3633064885a.2
        for <linux-phy@lists.infradead.org>; Mon, 02 Mar 2026 05:35:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772458531; x=1773063331; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=P254J3MDCNQW2brjbXOB4OcJK4ugiVnJqpO/rx59Igg=;
        b=G9aWIpsnx1NetFvRQpVtBrR72z+SWgVvJWZ7KLC+VvgC0+3aLAtkNyxe1QLtXaQFnY
         acaeZCIJN7zKDBzvFo9j9P33U3x5PBKL7C9t3MpP6ePVVMlSMB8k5cTYl0PSvDT+bPhp
         PVLHM2VSxZKF2YKhb5q7kAbHpzk5vQa67mKYpITAQRSqvqlvQzinA6K6/Z5pGqcfR1Ea
         tFyc3gO21SXCkvVK+At4MNfIaKngRr14BOY1fHgs6D/4k8KWSzO+YwxK4oy4zPnTLdaD
         h5uFlgP8rhBC9uhAO+/yyihrMB9bKEP7ehYayn18f/Xo0y6bbaoNQ7AIVwaQYt2QdIVr
         chug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772458531; x=1773063331;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P254J3MDCNQW2brjbXOB4OcJK4ugiVnJqpO/rx59Igg=;
        b=r3SiLIoB3ILXHO01J4d9MNkE+sW4DDL+o1lUUkseZyFFlfV+tsvnnaJfO/8gCi64NM
         0m0svhJrrbWytuZRepEWdA8ReC4neDfgDBvz3V7MpB0WaLVvwR6PcNAXi8O9kJvj9tVo
         QUSXE0uVFQzaCfvbieXBfce6kjmpsSTcd4gQLeBDQ/k/5s4lxYRUw7P2jGVhgx+yGPwn
         /aPPvrbQNZ08baLgoNtEopaog+j1FfjyloPwUuw3kDdrnWtG6kK/AlvaLv3PV+YzqjW5
         j9tgJ30+7t/y6lfeb96xJHgXaiJQVAnQhDJkzHXXVlVPdsPpyWjGyAq0Z/zHswUGSbUX
         JfTw==
X-Forwarded-Encrypted: i=1; AJvYcCUR/bZKqInkcp6G9YdMMYaplGuRdo4I0rT3WNb/SAmGq6GUotXXILnkvK2sTa7emjZ80DfsbCZo5CA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzqzeOQOoDMf1pUJocgc4oNKQREgJ5hX3J3dYWyIh9sJuXEgqix
	DAj91L8T46/Kk3rWYJo4Ip5apw+m4X9NefK03Zo2uWlrSYQYSkfgo9ick0rQiUFjvzt5qFlrgKh
	F/p1i0PWH8aCjFOgwAR3fySKi1nbSXSAwa/I9/zEg+jmJYedgnKp613caQPxtCaOEeISy
X-Gm-Gg: ATEYQzzzXdRThMdagwCyMwXj2Qz/Krh0Y5xFEZmuUubTZkOWS8f+0NVnKLclhw/wzlN
	wOosviIU9UvMObB2bJVZN6QEx8+QFcC/jXT0Y4pvjr/U+bpOhWBr5v7uDXyGg7nLrzuCIFc7obr
	C5gplSY2Fb5/VaC2EBryItR1xyZo4EF35VSrELTAuMbMH9m3ZxZ/VFB1tn2YW8/7JXrCc9kDDW9
	LNlN78AYgNNi9h8YCksc6uxw1iR2D0nhETkXJSmsjq0QLS1jk+T04Zco2X2U9tBZ1W74kM9SyUJ
	Y6gtVHoJkk45gAm+7Na+OpNhwcgonkgabiJu3lWL1gK9hMnhf7A089vpbL1B5AYwb0c/Iq81gQr
	EztIO98iz4d3xGzdkFKYG1AqEUAAosCSATrzMXITs052WuCKdnZn5LDA/2x5jJXJJKe+YGyAKWJ
	0OzPsjrrhzm1MFjgXr1zer/aV0jA0kCcFIES0=
X-Received: by 2002:a05:620a:7109:b0:8ca:3c67:891e with SMTP id af79cd13be357-8cbc8e05146mr1393406085a.42.1772458530897;
        Mon, 02 Mar 2026 05:35:30 -0800 (PST)
X-Received: by 2002:a05:620a:7109:b0:8ca:3c67:891e with SMTP id af79cd13be357-8cbc8e05146mr1393402585a.42.1772458530231;
        Mon, 02 Mar 2026 05:35:30 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f2f62a31sm30220471fa.14.2026.03.02.05.35.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 05:35:29 -0800 (PST)
Date: Mon, 2 Mar 2026 15:35:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 vdda-refgen supply for Glymur
Message-ID: <z5xwgs3qzzkyzfcyl2yipja67fzbb3h33pd4fimxlrpvzkpkck@5mcrx2uqo2bd>
References: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
 <20260208-refgen-v1-1-87ca84fd78b3@oss.qualcomm.com>
 <20260209-magic-conscious-seahorse-b81c8b@quoll>
 <aY1Jx5J8x/OALk5M@hu-qianyu-lv.qualcomm.com>
 <hcslao22elcihjw56ltu4yo54lotheqpikzsrq6tia33di4fs4@2ygrbwhcfx2a>
 <aaVkpKZcrNM7k4Xm@hu-qianyu-lv.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aaVkpKZcrNM7k4Xm@hu-qianyu-lv.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Pe7yRyhd c=1 sm=1 tr=0 ts=69a59223 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=wiyiQmdw19YBYzJq5jwA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: QwNlnrrAAGxaRkDndKB3-8S0QLUiNcDj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDExMyBTYWx0ZWRfXy00R93B4oHd9
 5hGGV5l58FddwrFdiBicSm8f0vh3q2hFsrn+TjSMfmuYmr87fp1jITF3odsmyBwWHGKVP6ZWqk5
 tu7WhWzQQIzfZn+wCIhLY5jAqZXRpRzjcrRWJlo6+qEd8HkUKn9q1RPt4FGltrwHolUo9xmreRO
 cjNU6vqzeH2qu+/EzPHiUsdvNbwjM6UaJaObiq4qLVYoWv//2DHR6+yMTM1CTB1YKpSq1GRNFVg
 /ZnAtDWH94qgagDwbQpRgedW6Ms05FWkWTU9DCXTLZL17iod9tkQLCGx61Wmu6kuJjfjuFb2IXM
 ArZLZf4Mu04jg8tTmT9McrWLdE3x5LCqz1PTD7dFZtcVq4pPz3YqgqvaXK8al08a9akPv0MXluD
 J4EwwGoEq2iaO9rvNQwLz74PgSrX2NfNrmcsAUV9dkStSk8S9RlO5Nkp+wuUwdEmshamG8Rqagp
 YZ8N8Ke6rQhhcJKYtPQ==
X-Proofpoint-GUID: QwNlnrrAAGxaRkDndKB3-8S0QLUiNcDj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 adultscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_053533_279133_BC7D11E7 
X-CRM114-Status: GOOD (  44.77  )
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

On Mon, Mar 02, 2026 at 02:21:24AM -0800, Qiang Yu wrote:
> On Fri, Feb 13, 2026 at 07:47:36PM +0200, Dmitry Baryshkov wrote:
> > On Wed, Feb 11, 2026 at 07:32:23PM -0800, Qiang Yu wrote:
> > > On Mon, Feb 09, 2026 at 09:06:23AM +0100, Krzysztof Kozlowski wrote:
> > > > On Sun, Feb 08, 2026 at 08:49:39PM -0800, Qiang Yu wrote:
> > > > > The PCIe QMP PHYs on Glymur require stable reference voltage provided by
> > > > > refgen. The refgen itself requires two separate power supplies:
> > > > > vdda-refgen0p9 and vdda-refgen1p2.
> > > > > 
> > > > > Since there is no dedicated driver for REFGEN, add vdda-refgen0p9-supply
> > > > 
> > > > How does the driver matter for the bindings? If I add dedicated driver
> > > > for refgen, then I change the bindings?
> > > 
> > > Yeah, I know that dt-bindings should describe hardware, not software. But
> > > what I meant to say is that the refgen is different from qref which is
> > > controlled via TCSR registers and its LDOs are requested to vote in
> > > tcsrcc driver. The refgen doesn't required register setting and it doesn't
> > > have dedicated driver, so we vote its LDOs in phy driver. I will avoid
> > > this statement in next version.
> > 
> > I must admit, I could not find references to the refgen in any of Glymur
> > PCIe-related HPGs.
> > 
> > > 
> > > > 
> > > > There is qcom,sc8280xp-refgen-regulator so why there cannot be
> > > > qcom,x1e-refgen-regulator?
> > > 
> > > I think we can and it seems better because the refgen for pcie phy also
> > > supplies reference voltage to other modules like usb. But I checked the
> > > qcom-refgen-regulator.c, it contains some register settings and there is
> > > no LDOs voting. I'm not sure what does those register do, maybe Konrad
> > > can provide some backgroud.
> > 
> > Those regs provide voting for refgen, because on those platforms DSI
> > block doesn't have a hardware vote for refgen.
> 
> Hi Konrad, Dmitry
> 
> I tried to model the reference voltage as a fixed regulator but the fixed
> regulator driver only supports a single vin-supply. However, the refgen
> block requires two separate power supplies (1.2V and 0.9V LDOs).

On which platform? Does it require those power supplies only on GLymur
or on all relevant platforms?

> Would it be appropriate to modify the qcom-refgen-regulator.c driver to
> handle LDO voting for both the 1.2V and 0.9V supplies? In the regulator's
> enable/disable callbacks, we could vote for and unvote these two LDOs
> instead of performing register operations.

Depending on the answer on the previous question either we should fix
all refgens to use proper power supplies, or you should add separate,
Glymur-specific one (especially if you don't need to program it. Do
you?).

But, let's first sort out regulators for older platforms. Please inquiry
internally.

> > > But on Glymur, we only need to vote LDOs. So
> > > what if we use a fixed regulator in the device tree to represent refgen?
> > > We could set refgen0p9 and refgen1p2 as its input supplies, then the PCIe
> > > PHY would just need one refgen supply reference.
> > > 
> > > > > and vdda-refgen1p2-supply properties to the PCIe PHY dt-bindings. Use
> > > > > conditional schema to restrict these properties to only Glymur PCIe QMP
> > > > > PHYs.
> > > > 
> > > > Best regards,
> > > > Krzysztof
> > > > 
> > 
> > -- 
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
