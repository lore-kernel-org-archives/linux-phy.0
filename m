Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13C81C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 13:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZnbBR8Jx8q2g3YA+jPpKIZEJpfrU8W/VZzkweaVLOUs=; b=v+bhEzbB/OWx5D
	r2OogAHtxeYCfhIoHnNufzsFyrMwLa9d4rio5S3mo5wb0MXLCx3CT393EssRGV1GTckidOYGeeVtq
	eLM9SE4d541xh0yWIoD8GGdtlvYJNFlJVUHfoCxNQ1YOr1GFahkUW5H1pqrXILIWtNmMDHa9OoZIp
	nt5A/CCrgvp4YpC1y0s9lIQxo3v2ZP5Ol2T7ZIXB0hZrxUi4hpVaK28foFAdN0wieJfLvwuC3XnpP
	1QEDzKRU0Bg3f9t2nniXAxx9FIc6XsjvyS1DKScoT5i9G53rvh3Y9Bk+SB/Pf7hKlIYZSDHEsdnHP
	3lmzDvsItk8BYvNCdTWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfHkw-00000004YVz-44ok;
	Thu, 02 Jul 2026 13:47:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfHkt-00000004YUy-0Kux
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 13:47:04 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 662D0Z8Q518955
	for <linux-phy@lists.infradead.org>; Thu, 2 Jul 2026 13:47:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DuWCAYPQZU3UwxT+0IBmr6kB
	G9d47WD008Fe5KCgWOo=; b=gDWo3lvlu35zx2BjdFyfAjLLbQOy8dOQG1KZjLLe
	9JQ04FEXpn31I9IailLSp9UFBeFMGzLnW+fqzbVFFnrtRPZE5BT2GJihVuZT2oK6
	we6Rsniei/uyAbEDJOegVfgyE26m1713NuJ+VaNViUfc8h6xVwJUd39twI1x/QK2
	fMg1HsXtMBm+49oYxgs6XS+1qoKgBiYHIwGMyBU2F9sw3FOVR6vKacHndts20fT9
	pKtJ2BHW/xkYXN2BkNRrnxgwyeCzcD4iloA2bgDxs+u72H8uUIkMf94hA8tBZulJ
	TKpuzDZNzF90TgcK80zwyT0em2sVbXQSdvx9wOg1hUPyLA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f5qnp8e7s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 13:47:01 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-92e695a3b28so66415185a.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 06:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783000021; x=1783604821; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DuWCAYPQZU3UwxT+0IBmr6kBG9d47WD008Fe5KCgWOo=;
        b=Q0KMK2lQEGPPcVai1nfsSlLjC/oaQdyXk6RXUz3D3/HVj1R+lqNXOzwtnBH9Sxqtww
         oHpChjApZ2BPeaGBx5hmJSBxtJELhCoERWiGraUKUW6K1wMwktTJLGBAYBt1dOUTinqP
         C59xYB+qiiANqxJ4DccsVw5fGuC8W+ylanKTubLr8crtddFpfjydmWYA8RAHsP7Faz/R
         dNgwGNJp288mmmaOJ7zL24GGYSyQnCauJr7IWgUqO3LFnFGycEa7y1pQgsQeohuxLnhR
         OsW/hK9nTrQqUgLuFaIt0zWdoTTuLzn48WmtLK9cF7sCMQxoq21TiKFeGAmsl/mkrXZn
         PoVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783000021; x=1783604821;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DuWCAYPQZU3UwxT+0IBmr6kBG9d47WD008Fe5KCgWOo=;
        b=Hh90JV1GiGTYi7CK9xhUc5LareS4DqzbV3aq9oIe1NwI4r6WnFVML9vFGcHP2XBjiU
         rt3knTtzYi6kVFpgj8fPgYcSEc/gz1UzxyLIrw1542eu0nuXN0AF0B5QEd9lgmeZxr3H
         wG1GN2aWZfW0Ev6/3qX1lYpkeLoVEfYG7xg9zEVpImaZiz0vUdI5naXTHmr14vAyaEcs
         EQQ7gsAudMO8PRNtqpU+BKLWs4cvPA1C2OI7dQixEb90KvfO36HpefuDEJtoYHmgJO1m
         LBa6h2yzLFzbs6mELWA/AebVtU2SKPyndEGDtTYdWYb9JqpH3TBiS2pIh7qDCTxAGEp8
         T0mg==
X-Forwarded-Encrypted: i=1; AFNElJ+XSwZSwVYOzJbC8ROaSFZpYyfKW76+9n8otIktndUkn1bgSbBzPRtyBWLW4zMBD/KCvBmrN2l2LPA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyJZnkprwaQDMWB/DMKiaFcX70EQnxgGtOx5Opvgih6XLtbvbKo
	KLFpyjsMQIq7squxzHibCK5BhlO2PeFCZ73YCJe1z5rgka9ICduHQN8mBmO93V29LgB91LfmO8/
	YaPSMScrUy3WRNjsP/i9wMdM1elRdugeckcPG6UM5LNbZkGnlpFBtu75A4bQ1XVNx2zd3
X-Gm-Gg: AfdE7clnUycsLv+aeb0RzbTLIEkkCHqpfQj9C+Rp0YVDFTIr9N3UoQ/xDAmfGuK35im
	o8sY1kwd2o5Q/W/zrL+Onwt2W3vJ3oHX1W3dmfqXRSBDB0bRmLuwkHMQxmQBxHyLZXG7QnLehna
	x8h1aZ6DU+lOIFWwu8SXXA36HLbKt+FaDy8SmkSlbt5FLBS1mQnhwjeSBVDVJZuzuA0np452HEx
	4MH6Wz4zeFzvlA8/Jk8vZI4TpJubfGnEi8Nrv/pf1+gWvKSqk9mm0oFfAhjbek42hYkfm/3vjQ+
	JuNb68IsDR02UEOCzWj6ck2vIB7dyOtDilzyfDGx9aI1zyySIjHX3zAjU7prDaOvu20uQ5y+WHr
	9sDQkAvYuIknLaV/prtJCysOXUCWbfPchoiYXwLuz4s2XcIwqEPt68OqJ1zw/3qp6Ff5eboiR56
	5c8tpv9/1TA1PxyL2koe+L51cB
X-Received: by 2002:a05:620a:630a:10b0:92e:7167:3f2c with SMTP id af79cd13be357-92e716742b3mr744871385a.32.1783000021212;
        Thu, 02 Jul 2026 06:47:01 -0700 (PDT)
X-Received: by 2002:a05:620a:630a:10b0:92e:7167:3f2c with SMTP id af79cd13be357-92e716742b3mr744868385a.32.1783000020738;
        Thu, 02 Jul 2026 06:47:00 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aec89e3292sm676304e87.73.2026.07.02.06.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 06:46:59 -0700 (PDT)
Date: Thu, 2 Jul 2026 16:46:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kathiravan T <quic_kathirav@quicinc.com>,
        Baruch Siach <baruch@tkos.co.il>, Dmitry Baryshkov <lumag@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] phy: qcom-qusb2: don't unrelated bits if autoresume
 is not used
Message-ID: <y46l2xifdzizayovcqksw7o2agkmqi5dcqokt2k5jybjern36b@4iw33qzri3oj>
References: <20260702-fix-qusb2-v1-0-b5cf55621524@oss.qualcomm.com>
 <20260702-fix-qusb2-v1-1-b5cf55621524@oss.qualcomm.com>
 <64f7efcc-1cd6-40f5-80c0-ab5f882854a3@oss.qualcomm.com>
 <3goo36jai5g2v24ijlf7g4gehq5zdlk7uwizya7dimqtm5pmrs@norf4xbqdlw5>
 <3c533783-e2a5-48f3-8275-4cef5651938b@oss.qualcomm.com>
 <e39c9092-30f3-4c04-8bdc-c6400871cecf@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e39c9092-30f3-4c04-8bdc-c6400871cecf@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDE0MyBTYWx0ZWRfX2c8bNBCqAymG
 mwC9xv6+PrzfaNUOw79nsg4tfvO1fklqS24o3quSR1aT8OyydsCd9lfC8VXGKt4DHzlgmKcKupd
 kGEN29niY4pHZtY818TuD7hkvtpFNfw=
X-Authority-Analysis: v=2.4 cv=FoI1OWrq c=1 sm=1 tr=0 ts=6a466bd5 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=VwQbUJbxAAAA:8
 a=COk6AnOGAAAA:8 a=gApLsddR9Uy7fhtP5TEA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDE0MyBTYWx0ZWRfX5uRmHIlYjVVH
 rFPEQ6EYjHA/nPbji4P80+N6gQm5YxbiA6KHKsA6ewEugm+0KcSbNLiHUAWZbdfCAUq9mC6Jf6j
 j3r1aL/ZlA732FExthDMnv0ApCp6RvRvP5SJBdX4ylMJ2HkBFRBOABHISRLNUXSVuPa1yo+h8HL
 kYaWRppfLXu58DTq2PDLtorLhipjXO/7GXpHZGu9z44PkIMKSkawHeXn6S759drAKZN8jfZIBKk
 0zHi3wahCBL3UwxYkRLhh96yo1/uJf36r/X972oyzf5IzXZ/H74aWO2SPCnZmqkko7XSNJGZ92k
 vy4UN8n9Taium94c8+7LQdsVmwJTwcd4jSOsjN6ugJkyjI9nZqMo4zMSaaVxNijHpWkZeib/+hN
 5FWePIWfgtixfgDA0No5m/7TjpeWKWhiUPRU8Rqon+gLPX6VPVupSsU+NUTVeEt2JMulKVZrROJ
 m7HV7ttwckHz71qQO6A==
X-Proofpoint-ORIG-GUID: Ea987QqIxw_62ZocOB9PHCuUgPFRhAo6
X-Proofpoint-GUID: Ea987QqIxw_62ZocOB9PHCuUgPFRhAo6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607020143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_064703_237112_FF1897B2 
X-CRM114-Status: GOOD (  21.91  )
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

On Thu, Jul 02, 2026 at 07:13:29PM +0530, Krishna Kurapati wrote:
> 
> 
> On 7/2/2026 5:54 PM, Konrad Dybcio wrote:
> > On 7/2/26 2:21 PM, Dmitry Baryshkov wrote:
> > > On Thu, Jul 02, 2026 at 02:00:06PM +0200, Konrad Dybcio wrote:
> > > > On 7/2/26 1:40 PM, Dmitry Baryshkov wrote:
> > > > > The IPQ6018 and QCS615 platforms don't need to toggle the autoresume
> > > > > bit.
> > > > 
> > > > why?
> > > 
> > > Here I have no idea, the HPG is unspecific, exact details are to be
> > > defined somewhere else. The platforms, when they were added, just stated
> > > that autoresume is to be skipped. Maybe original developers (in cc) can
> > > answer this question. Anyway, if autoresume is to be toggled, it should
> > > be coming as a separate fixup. I can reorder the patches though, so that
> > > at least register layout is correct.
> > 
> > +Krishna, Wesley?
> > 

[..]

> 
> Also for qcs615, in downstream code, I see that auto-resume is being set.
> Its a mistake from my end when I added [1].
> 
> [1]: https://lore.kernel.org/all/20241014084432.3310114-5-quic_kriskura@quicinc.com/

Ok, I'll fix it in v2.

Do we need to enable autoresume for IPQ6018 too?

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
