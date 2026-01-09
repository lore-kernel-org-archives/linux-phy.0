Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8BB6D1A613
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 12:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ekiO1NQmJMGWVbbJcie9csn1YVLwe1Nf9+ydWbzJyI=; b=aanXhYhfD6hn3O
	/crC/rGU0O91W3Zkv5i5US0AwSbIP+2oOmba4sqtPSf2+iBC+jX+qk5R1xChDvdymIEzGxccXl4TI
	XbJNZJZEf0kRc6DuitjupAw1y2zFSpFzz98xT7EK3avWxh1suq+OMrUKQmuq3blh1CpfiLKm0gGWp
	VtjcxPpQPHvfQdBdJruVYTtbrrYsi1JqICleyAoERLgZPDYQJGZB6ubKgHp6H3SqQLFRPlZWQ6Wn6
	v7Iqb52reCDzSfMF7OGYlf4HApWnTUslMHjq938FGHoUclGXwZYo4+CoG2FhN6rCrEwCu88NUI5aG
	oIveICh7frrFseZg9k1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veBx5-00000002K0b-1pMn;
	Fri, 09 Jan 2026 12:50:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veBx3-00000002Jzq-0KoX
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 12:50:50 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60982Whw2183976
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 12:50:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uMi19bT/2KsvQExq9tXzAxTw
	QukDUINRo3BEZqQEqrc=; b=hfJX2H7Any2GdvrdmZXylSlyrTY08BEm8kXG12Cz
	2LQI6pARYh4sVLGl/2MTbYYdOLP09nkg/GtRUAdmYFkaztLr/+FMk/AdvfJwufAg
	swdv8PrwuST9kiu5BUgGyZcXEyzaws8n8B1csuuokCK3Qw2in4vgTVZcTe45QNMz
	hx9VfdvTx1iJOHk2fzkXYRlY8BE1anvbGE1N1NWWn6qzyrQm1eN3RqYtjGcmUn5W
	7G20sTCAECeZlJV4jAd5bMxmM66qPrcUW3TtADQx6YT+BHKbE8MZIp5KjRNDu0Qb
	8B0Dq9tjB2twMINC2X4k5/tqxczzJdrBuL5GGx27+ggJTw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjwtn8v65-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 12:50:47 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b51db8ebd9so1324590385a.2
        for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 04:50:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767963046; x=1768567846; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uMi19bT/2KsvQExq9tXzAxTwQukDUINRo3BEZqQEqrc=;
        b=dKU/7m6yGv1m3pE8Zc2uvB1zAMx7i2RSe4A50TkkTK8wOFrKX6S1lEYMy3bVIXvLeg
         8BF7OZWELc9l9VJp2voUbFqU2OGH58M71zr3Vt+M8ARUXMuGWtU5/iKdAY45Ahkyvz5M
         B0t6yY0P4cxIPBWr29hg0BsEQ3F8zjueRnYz4lblSn2UGOz1fARUJnuOx3kUS9iEHXWc
         tGJ0wR434Bj2Kqq/80htG1tsJ9OoRH4aiRckRpGiWc01Z+KeNFoYbkxtb74IeG2FfmHE
         gsiyFzNtNcoshwVRenhkq71BDNQMsONg23MVHyTxT43wOmhzgM9PorUqi0T+h+rk9QZc
         R6Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767963046; x=1768567846;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uMi19bT/2KsvQExq9tXzAxTwQukDUINRo3BEZqQEqrc=;
        b=BPX+iS/qYBPXtW5VQ+ezBgxw7WHdhRPMurF8NeDojda147YmXXBJySa5vjE/Y7WqFW
         j/LQe1W1hLhBEx+scy1N4bhpXlmCIjudzjxTwHIJ31k/s8SHPBeKAHCjVwjXyW4gQdH0
         hi+pKjWw8yA/HZqNKsV0U9fKvkWMwEyB4Zkk8gI2BtTFdTK7BfmTf4a73J4MkwZiW+5Y
         floY02KvB1/rKp1czCAFnJYvx6bBiYJFLwMRImro147K/tcI8tJM53Wan9yIDI4ceCKg
         HXJzU3XYgq2ccsDD1bywk59yCHPdXn3nk3lpy1lrrw9Yz5IRbdb9m1P+gidqrlFTPOrU
         TzwQ==
X-Forwarded-Encrypted: i=1; AJvYcCVg5lTcOUi+2QpCzqsHevR8JDCPCy1k3tFvPMD0HrlLeCRNCTQbZyMe6tAB3vi3rufSSFs2EsdHDmc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxuwdOc1m6haB7W+dkfmnwo7Sy6ZKiL+oZZnyCqUKDWXUFC9udJ
	8QLaqc3v50+1QWFcrNrQEN8KT8kxGQGY0/GS/u0EWuNoLeXk5DAUk8/gay1YLJV3DvsPgKQhNuq
	z6WksAPoZS2gVF7GhWOd3l34n8zueGbeII6f/NACvhf2fbERpEfCrHiB5yvQeGFjz9cfA
X-Gm-Gg: AY/fxX59+5KSTX/IJmbBduASFdFFtw34KyUAohjlhWDdxxY1VgR8v22b+zrVgxWqbzL
	BC4Oh8S8xYxmu+0FkbdjVGGo1Z2CstkEAj6jFOZ9pT/EqbT3HRr24qbGQAGToNbUMBwCloaxVdv
	WZ7F+BJvtg5pdI69SQb3yce3nHHEVLNyj82JNGx98hQabkGGnVKIEMbLdVm2c85J9rxN7Y1f1Gw
	MGRIXqUFWmCZMqP6Ujb2ZuOBvVQm9qLefn0qdQCjMevWvE0eJVCY92py8yAV55Grviu94IiAXx5
	TlqAYHKgms6b5bGQdnFReP/hKWGPdAvbIUEgIFF3tmKKJHF0XNq/zgLYkV8IDm/V3CJjLGzPyFc
	rp7jU0kVAhEiQ8F/kFHzeNpgjlfWdFB9GIrlRkeIocOh4VJMc1kV09Qa0UwjjTrCiYfDIHYj8+x
	2KWQ6fK5TT4T20CDd+HdqfodA=
X-Received: by 2002:a05:620a:444b:b0:8b2:9fb7:62bd with SMTP id af79cd13be357-8c389417561mr1356383885a.74.1767963046225;
        Fri, 09 Jan 2026 04:50:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG98H1mAcma5eueuAgjBnLHiC7p5WGoxrEiz3bi1dp1G5/PFEWquv2v/Af/F4rLyMFSEYQdqQ==
X-Received: by 2002:a05:620a:444b:b0:8b2:9fb7:62bd with SMTP id af79cd13be357-8c389417561mr1356363085a.74.1767963042795;
        Fri, 09 Jan 2026 04:50:42 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b6cc4d11csm2277684e87.74.2026.01.09.04.50.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 04:50:42 -0800 (PST)
Date: Fri, 9 Jan 2026 14:50:40 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>, vkoul@kernel.org,
        kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, neil.armstrong@linaro.org
Subject: Re: [PATCH 2/4] phy: qcom: qmp-usbc: Fix possible NULL-deref on
 early runtime suspend
Message-ID: <6hrjezmmq5ebevqgbbiqyjg7os6wmiolulw34sac5nw365m7v3@zxhz43h6kexa>
References: <20260108154944.211886-1-loic.poulain@oss.qualcomm.com>
 <20260108154944.211886-3-loic.poulain@oss.qualcomm.com>
 <c6017022-c96e-4095-b85d-88784a44c13a@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c6017022-c96e-4095-b85d-88784a44c13a@oss.qualcomm.com>
X-Proofpoint-GUID: SOB-d_-SQKu7FOoj8lgNgJXwLpgspC3c
X-Proofpoint-ORIG-GUID: SOB-d_-SQKu7FOoj8lgNgJXwLpgspC3c
X-Authority-Analysis: v=2.4 cv=Uohu9uwB c=1 sm=1 tr=0 ts=6960f9a7 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=UD6jFWV5_MqAamJTNaQA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA5NCBTYWx0ZWRfX+kNBTS4/8StN
 JT2S0gFGXhU97xEQvgmvCtwYqYEqoLr/y7xEISr8TJ95hftVdkUFu4Al0fvS75KMleelB57o18x
 GiLuJP3qYIzM3KXHxv1y++7BhmzVhLr3rp2DdtnjPef/1p/wYPz3gl6XYjukRPQLudeBQqPcCa3
 p/nTw6OpafYwAAuE9tze+vVz8Q0rG/PgCXAiWr6dQZ2v4SDUOTd6JllCQZZXjkCc1CHQ6nwKbzB
 qoVQtQ3wPts7T2CGaItT6tojfYv+n+aTW7ivcrKdapgvm32vyu9OJ/dxOVNCd7bFMUEtJxFYBWR
 Sr7VBImfJNRHHDFBMcEmlrlELJyk9Amn2HbAscCP6JTSVUzAD75dVp+2okjA94Phalc7Wz2+c80
 N9Oi+f4cs8BlP2pUcznIcTZPI/nvFXD7bJIHTWmJpqyT0Vami6KNP7AUK4fZrKww2suu4vDQvaE
 5RLKsg64bfFSovPCamQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_045049_125497_2C7D0939 
X-CRM114-Status: GOOD (  27.53  )
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

On Fri, Jan 09, 2026 at 12:26:58PM +0100, Konrad Dybcio wrote:
> On 1/8/26 4:49 PM, Loic Poulain wrote:
> > There is a small window where the runtime suspend callback may run
> > after pm_runtime_enable() and before pm_runtime_forbid(). In this
> > case, a crash occurs because runtime suspend/resume dereferences
> > qmp->phy pointer, which is not yet initialized:
> >     `if (!qmp->phy->init_count) {`
> > 
> > Use qmp->usb_init_count instead of qmp->phy->init_count to avoid
> > depending on the possibly uninitialized phy pointer.
> > 
> > Also reorder pm_runtime_enable() and pm_runtime_forbid() to prevent
> > the window where an unnecessary runtime suspend can occur.
> > 
> > Fixes: 19281571a4d5 ("phy: qcom: qmp-usb: split USB-C PHY driver")
> > Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 14 +++++++-------
> >  1 file changed, 7 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> > index 5e7fcb26744a..05717ca85c5b 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> > @@ -690,7 +690,7 @@ static int __maybe_unused qmp_usbc_runtime_suspend(struct device *dev)
> >  
> >  	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
> >  
> > -	if (!qmp->phy->init_count) {
> > +	if (!qmp->usb_init_count) {
> >  		dev_vdbg(dev, "PHY not initialized, bailing out\n");
> 
> FWIW this effectively says "if in DP mode, the PHY can't runtime suspend"
> which I'm not sure is what should happen.
> 
> In USB3 mode, there's definitely a register in PCS_USB to put it into
> "autonomous mode", where I believe all the hw does it listen for link
> sleep (U3 in USB3 spec) exit requests
> 
> In DP, I suppose we can't just yank the power until the controller
> decides to suspend the link, at which point we just power off the PHY..
> would that be right, Dmitry?

I think so.

> 
> Konrad
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
