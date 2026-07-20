Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 319B2C44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 14:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IDYwzbPww1bxApsb9vtEj0Lyi2lvuSz5MeInTXXl9tI=; b=hYOWxDMjkvFX7Q
	mN0WCeglCLXDbtSTnhA4akhjZlb8NFwTocMX/xVrC5kujlEcBOifjBus2VqdbvIAENSMzX2DQ7/gU
	Bpt/8po6bqFd7lyIHMbmxUPjIGtPCVLt/J6g9gC3Dj3+8wv4WOksZEAiqbnHEikEi5VlsVRQZn+Ea
	bD7bgF/pd4/gD8+YWtvUFbKxQmNCzKffgduWlvdUxFvN3J2lkKwITrBITWEI5l0hsIlmMOag77tbO
	m0oq5v7iOhcRDzQ8hWCEHaSopphUxVGLz/O1pYhcnpVIyaDNT52yvik+QzIm51G5IaDiOyHjtghQz
	qWYcHH+iHsJiGJUlytIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlohG-00000006vBO-3j74;
	Mon, 20 Jul 2026 14:10:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlohF-00000006vAO-1qY7
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 14:10:18 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66KDrF5u2807644
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:10:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zlw37I77UEcu7PgkZBonU+7U
	vpDEzNU8P95fsirsjcY=; b=DlMPY0TtAh3MqzDXJewBmdT4nyVrYFggSvpVO2O7
	rZfeWlNtFd8Mo6/QHmpjJ/HmhmIjXZKf2FpKWk9DctBoGsQ/PLnU1XWVy5fe3HVU
	EKB+6RValYz9BudzSOGv5QZHkx90Um/Q9+HiXFfgbutvNZ6WaXN7HfRWI1qshVr+
	X3pxefnGaxVJQvDzr+N4af3Jwv9/wpJl0Wj5cKtsZcUrrdgk7TuVy+hpxTmVmCnu
	TCFCYbE1bIrivJ0Ga2ps5gJcAk9RYVPKrjguGZiiPfxqU8Bp5j6Izi9QmoA7hsv5
	yd3L4CYZ0flFSoKWC51oAP9mafWq0kUFJIFqDR+OeMgVsg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhgre99s6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:10:16 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51c21c01cf3so150207521cf.2
        for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 07:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784556616; x=1785161416; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=zlw37I77UEcu7PgkZBonU+7UvpDEzNU8P95fsirsjcY=;
        b=Ld/LsCDa1mZUZRYl591Q5ryexLsEhzpRjF+peUUR75Q5HJe41GWTUQUzWzpyNprHyj
         s1sV+y2XY92PNGF4xeEJg+CAOIgISopyL9LI4/Oj+8jPsXNkToRsuj5teJkrcUcvtf0b
         odknJAj3wqXKoaM3q0j0Rt47FyNkt6hnBOrEpuGi5U5OsHM7ry1ASEYgyQ5/+jo+UFmS
         FqQM8LAL0Fjlz7QLOh6J+uQ59Y/HJfj5+Oak4lGDMhAHPW9uqYus1JNraTiN/D7JUvs0
         UjRCumvS9jdfqR/2iFE7hi8vBPDmVNaKJZal34w4Mx36fzQrFbjZGCy/T9o6fi0QjjAs
         m/MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784556616; x=1785161416;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zlw37I77UEcu7PgkZBonU+7UvpDEzNU8P95fsirsjcY=;
        b=YSyYN82mtbV9tnsmB/pfyVHqPasyJLhahStb+EAwZXRqDXw3ee422YSyQpVf03cSqN
         R5/i+RRMC2oJ9XL9EerVUAR9odxD2NC+Sra3RGG3YNyqWITUWh6M6OnS/fJY1RfthCgL
         uagV+btN5qIp4Rgd4JuUYQB6HFvyp2HKVYeiDm9EtYQp++memuMyZfkbetkulzDE7ON1
         vAaytEGNVe0dz5gg6ofbfCuZ4f77JtZJIRa2k7ik5JpTO2WgVQUYkoKTE3My9KkOPxiI
         O2KZxTZpvYertV9Fgxl6E21ejllWu9z8zmINNiGi8cCgnJX43KlWHSe0AYCKGrgX88U1
         6WYQ==
X-Forwarded-Encrypted: i=1; AHgh+RoETbi2bBh/0htsI7UXp+bOxi1b7j0t7dpVqZKgjvmcZmQn4ZkJIqQPTlLXyne0a00D5fTqpvAVTiY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzQVwASpNvjdbpHoDGd8K4XorN+4LZHlUPI3CBiAhv1qn082dl+
	unbb4fZd7+528UVNoCk0r9jZA0LNRUVLjdlO2ClBBJJsYuUF9uwpuDYKUcP0OcLkTPgrj0YsJoC
	uKDr9fqGfdVyJFTzdLJkRY6zfM8nrb+c9vwzC5riXbILXvkgdrKtlcb1vtXAlZIDOpu86
X-Gm-Gg: AfdE7cm1OT4zmXQG3x7UGB/Sm+QCLbsnlueZbVLb+dTQcyiIFih0MbnZXkdwkjZbN4/
	fAcABeWXlQzDSLLPzhLGhFd2izgM1R2kxe2C8vs8fVprvuA2Ps4QK1P/E22dfQ4vthKGv7Zwh3t
	XRYkDgdrq83EiLqw8nbFoZJKUl9RHajKSzTTEKGgoJamPQ8b+cXDvFO43YOJUCVJX5TUWfSDEyW
	t/Cl8xQ+i9ri+wVu7jgzhIhg2RFZkQiQQ7O+ylFighY0ZF7cWPDFYf8az50j4EEwYKTssQgJxU2
	BRSjzt+Dbgm5Ym51lkZAE0xU0Tdl9apxbKG3ZJQfoWuAtKD98ZjTuH6mkQttEQeWOGzZChHzs2r
	2ODaJPNpTXY6e01Y3daOBygW/Ofifx56h06U7VlS6oYmbeZtj9/Vgmx6Xr+QCa1HIwp0LaXUTiC
	e7OeUPrn36+yqipQ==
X-Received: by 2002:a05:622a:5cd:b0:51c:1291:911c with SMTP id d75a77b69052e-5213d2b728dmr130012231cf.14.1784556615698;
        Mon, 20 Jul 2026 07:10:15 -0700 (PDT)
X-Received: by 2002:a05:622a:5cd:b0:51c:1291:911c with SMTP id d75a77b69052e-5213d2b728dmr130011791cf.14.1784556615296;
        Mon, 20 Jul 2026 07:10:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b291e298d5sm2320723e87.84.2026.07.20.07.10.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 07:10:13 -0700 (PDT)
Date: Mon, 20 Jul 2026 17:10:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: sashiko-reviews@lists.linux.dev, neil.armstrong@linaro.org,
        olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org
Subject: Re: [PATCH v4 2/8] phy: rockchip: samsung-hdptx: Prevent
 divide-by-zero when computing clk rate
Message-ID: <al4sQ1kNriKH7hHL@umbar.lan>
References: <20260612-hdptx-clk-fixes-v4-2-ce5e1d456cda@collabora.com>
 <20260611235702.0E9691F000E9@smtp.kernel.org>
 <90ac7bbc-977b-432a-9f17-b7280e19d819@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <90ac7bbc-977b-432a-9f17-b7280e19d819@collabora.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDE1NyBTYWx0ZWRfX9HS1wj9GesTu
 de6v/0a2UNa1ii1/WuArYby8Th0/I5+0Qg+4+cmv8+m+sG+PSfLRiL7j3Esef24AqDy+U2k0P98
 UD9cQ1L9qRGj3S39/HRStsURjPJH660=
X-Proofpoint-GUID: eRQdv8A8qLaJuB9o0jSfqrH16gatsWgo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDE1NyBTYWx0ZWRfXxht8s81pwxjV
 lgY3iRvrY7PkQoDNHEfh1JtaLpAHFJrWcJh4BA6sp8U0QxNbcd9l6hkX+5K9b9BlB81aalCNTjL
 kQpKuHCgEJVZJ0e6gyP3pajDXVfNUAU+xCbvr2MZuOAZQXNco+UgcK/PyK5EdR/pAMYBjUl0Lbo
 U9BmkfJ+urMGSzphk+VuDR59V3wf5sUi2OTbLjOUT4daFkwfqUhy5Gfm22YIJ0zlFHEDyHk7716
 w5ckhXS0St3AsIy7Ct62CPyLsfLoxKagheVfs04bPKassaJJu28FpF8Fcv4O37Ue3sPaDkmo/kG
 gFd755NZSGh46+R/4UVDeY5cX7alm9HQEFmm7cU3yz32fe3+KSYTiGcBWHgEcYTBN9IMX0sq5hL
 QopIsoOlgCKAKleTKqGY7uLg7n9nKs02PSuJJPWlW1VIIIMWVJV5pBlpDVQDvV2nzh5MWzjiedI
 N3TQxmKSEa+vMtKToxQ==
X-Proofpoint-ORIG-GUID: eRQdv8A8qLaJuB9o0jSfqrH16gatsWgo
X-Authority-Analysis: v=2.4 cv=foLsol4f c=1 sm=1 tr=0 ts=6a5e2c48 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=SANp81FrUiQe7WWXlqYA:9 a=CjuIK1q_8ugA:10 a=ZXulRonScM0A:10
 a=zZCYzV9kfG8A:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_03,2026-07-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 priorityscore=1501 spamscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 malwarescore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607200157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_071017_595934_B398A408 
X-CRM114-Status: GOOD (  13.11  )
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

On Fri, Jun 12, 2026 at 03:18:52AM +0300, Cristian Ciocaltea wrote:
> On 6/12/26 2:57 AM, sashiko-bot@kernel.org wrote:
> > Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> > 
> > Pre-existing issues:
> > - [High] Potential integer underflow in `fout` calculation when hardware state is misconfigured, leading to a massive bogus clock rate that could hang downstream components.
> > --
> 
> If the hardware reached such a damaged state, the kernel is likely already encountering more serious issues.
> 
> Regardless, I will address this in the "FRL TxFFE level control" series, which is currently blocked by this one, to avoid any further delays.
> 

With the overflow handled:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
