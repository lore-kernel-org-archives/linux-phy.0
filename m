Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59D96E81BBB
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 13:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l46DV6drzAsxRB0FGVUGAy4E6wcVc+ArjRnfZs/sCCs=; b=r3k26PCoOrkPci
	yu4uSwAdqXiw/CCXxdDDMEXptTWukJxbmmRoMhZLNI19tdHBNk9++z5YLlkAmoI8+z3hOjAjh6Jws
	yqvWdbeHTwFYJD1GDTHriUeTURweWMoGeQBFMKEYjnRAVTq+CL6YF9+1/Cevmocm/E5wKQYQHTATU
	Wk0Mhouxj3EE3KXyydnio4AKvWTlBsPKCxaEWNV9/Az7pQhplj76ukEgMngchaphzhuljyMoTkIsQ
	NAehtdxtQrhrohmgjFFguH8e2DIfA9mIX1k4jk+1lGaY2Ns3xeelTpG8746l/HhAgXHSNjAhMkw39
	Plg2g+KNArHccIErbtzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpR9S-0000000FQCY-2ru4;
	Mon, 09 Feb 2026 13:18:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpR9Q-0000000FQBp-3KHr
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 13:18:06 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619AcMBq2586940
	for <linux-phy@lists.infradead.org>; Mon, 9 Feb 2026 13:18:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ori76HCn/IvmJax1sLFXEw2S
	KjcoMzlrP78wr8+BP6c=; b=YpfptaiI9kSVNnshs/HkOXJIQetYeyK1FLgoQFhJ
	3o76tOZpKGPWXb9v139NUJ1q5yntDwD0vGoCewBOQFpZiGCqu/QiKbW6wVkLky6k
	3keugepI8SVmOuiVaZ19D1DPASnBRfO17kiZ5GTOHUp+MN/YtPaQGf1bpgQuKvRc
	3SujvpSVJZKeqm8dv5c84j53FQJ+gO/n/exuInMB2I6c2El/YZekiVDrsYQYmrq7
	nrxh8ttrN0L21XHsKkPmaVwTxY+Gy686OUC0D2q2cJnYdnuHYHX8fCBe0mHF180b
	uZ0ZojqDQsjZumU2jMpEK0iCoKsxJ/qXJljkupfaMFuYAg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c793bhk95-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 13:18:03 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70ed6c849so1284680985a.1
        for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 05:18:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770643083; x=1771247883; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ori76HCn/IvmJax1sLFXEw2SKjcoMzlrP78wr8+BP6c=;
        b=LJaIoTtcpCkklYF0yIRQwyjGw12EXKOiITReX72RSXSOUUZrSAIwxue5PWkvnCU974
         uh/VEFxLZboUFr/KOMf4kGkdMXVdlfi173UT2ILh6nrEHDHZd7HbC+SvCpDW+qCORtT5
         UHimKBtUsvEe1JPcz4qaBmApKWSPuYQ0TX9AQVSwaBWDmp67tefgKivyhp8H/hM5iEl6
         MZYN1V8NZ/tW9XhN+7oaYsxdRBdaTEs0xUdhSgZyZ7i+dlbYARRik21jBl9tSHm35TnZ
         sASMHeM2IyiZR73D7F4CDcUSZhMMCCHM0IjUcfytgxEhh4oblwdo3ck6l1dDTwdjAFvz
         X+WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770643083; x=1771247883;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ori76HCn/IvmJax1sLFXEw2SKjcoMzlrP78wr8+BP6c=;
        b=Jajc8P6TXwZ2DI1pZlrYv4akLh/hyasYoiqQsloaame5CxKHVlni/aw1Tw/ZBeHJb2
         P0YyiHEAX4NuxrE86Fmeovy15TpO92VP6/RuPnjWyvomWopeIlCi9BkeCVEOS2XPQ4qC
         OZniGsXQxkFwnHxgsMd7BZQB0uvSoH5mEWtqGrAAMUACXv2ZoD8EVBAl03uI15Bw51AJ
         Vu9hKFAS2W7aEVQzUKwv+3fU03IFFh8l78dcu7NsVRxd5Tu2/u5MuGVMheOWEZ3FRwBH
         Eskp6HhuyJfPMAdYt7cOV/eE2ENWWP+5YL+uNh5kcTBiUjg5epstIhMdpPgY6DVEf/rd
         ExWA==
X-Forwarded-Encrypted: i=1; AJvYcCULd7uGFBkUui/QqL4+UTL1ON1wfDu3lBQVR3dyrl/ARBVdOyauaAQ3HyuicCPnc0WtUW4CG9Tko+g=@lists.infradead.org
X-Gm-Message-State: AOJu0YxX4iS46A93sKyZMtU3b9SMN/KmUqO3JQlUydgD5g65DnFuIA8+
	j/WDlP1TlDqnVk2lm2K+J0Nzx1LT31JuO/FsVu1MY5Mo2pMxB4cRacC6o6k06Pdvb7DOAw/KvqB
	M4KjlnFsvQUEmN9zVVWAOUawysMAIK/EpfBLUVkzvKgaHK1coPr6VIt355edN7PNTHnkL
X-Gm-Gg: AZuq6aIqsqIjADKpNIJU2Nno0NFhcyc1RUgY3chlA8DUAzdJxo/SAuZFQgtOeWfkUPp
	PfKO4GX4e/9w0S9hMZVmr023VzV014pS95v34Kv3i7rsTnj+S3xmw5NJKsBw56FG0MgSiltfG9R
	jP3MmPVngNmjDVcMCwY+Iqb4AJSfRpD6tZto0CE2aFea4BMkRQR8eVSgRtqZxBv9bZ0ojLIwVvH
	OIY4fDWcgQp4KS4hN37f8djHDZsaPyQZo5WjTcF5ah5W+NNaFnaki6DonIy68/8iLm91PgdN2eM
	cjKN8JVPrmhMz7UQ7SPuhZYETpOrLBAkdnbzXdmbN2BwArquk/KIjg794c6+qHgVZVX5YP3IWzU
	kw4wdilYA44b+v99MJ1VZTALNK8MQe6stOBVMuognXFloNb0+TimOryezTY+V06TVTkHwST4osl
	gA5M3ZUq2v1tPgz8UpzyRSlJI=
X-Received: by 2002:a05:620a:d8c:b0:8ca:934a:5e35 with SMTP id af79cd13be357-8caf19d661emr1315100585a.84.1770643083123;
        Mon, 09 Feb 2026 05:18:03 -0800 (PST)
X-Received: by 2002:a05:620a:d8c:b0:8ca:934a:5e35 with SMTP id af79cd13be357-8caf19d661emr1315094785a.84.1770643082525;
        Mon, 09 Feb 2026 05:18:02 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-386b623639csm27411421fa.8.2026.02.09.05.18.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 05:18:01 -0800 (PST)
Date: Mon, 9 Feb 2026 15:18:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/5] phy: qcom: qmp-usbc: Prevent unnecessary PM
 runtime suspend at boot
Message-ID: <y63tdwixjlby6ixqwqpu6dsxa76vjss2swcubbnwdjvw6lun2z@lmpxjm3ex3ke>
References: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
 <20260205160240.748371-3-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260205160240.748371-3-loic.poulain@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=ctOWUl4i c=1 sm=1 tr=0 ts=6989de8b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=jqzBUNCQ8QzhMs2i4nsA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: SMc0iOKSd12e1bCOC1mHUB0Tu6BS56VF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDExMSBTYWx0ZWRfX+6HuHEupksYo
 JXqmaShp6UA9yCYyrFJEGZDguoXGF1D2DnqGgJTw/I2xZ/SCiZ6t56kLbq6fLAZF2e5svn3TRD4
 qdRh/gVm1jcXhTl/3GjQfIyrrP2psc/ya9gPM45hIKd+k343AYlCAsj7mKZbjpZzmymz9ZCIMNa
 pRjMK7hfmyyg1F/i+KdvNLP+kb3RRzoX84p4JNnr15qJ+S3d3mMTdvrxpmVRNew+geVB0Rkx67C
 IToEzK325nHwtHI4K3RDfYBQ76+lEtGBuArCOloFpqV6zCyK4a+yYLQNsv/ma97/k/9TQDLi+u/
 LoYSm21QGhyzDRDrAWEhtc4XyOWmgtgc6LPuecFCJI71vW2pkVSz3q3SShOR4W1ReRtTMJxW+q7
 Lvqx8ov7sJm4lPWfA6Xi0scYAXopJj8RshvcDr7MQtH/bYVGUFQjr38a6b0gwab38EWkV2AGJ/8
 HjGrFe1q5u1U+cDzYtw==
X-Proofpoint-GUID: SMc0iOKSd12e1bCOC1mHUB0Tu6BS56VF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 spamscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_051804_953062_047DACBF 
X-CRM114-Status: GOOD (  15.27  )
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

On Thu, Feb 05, 2026 at 05:02:37PM +0100, Loic Poulain wrote:
> There is a small window where the device can suspend after
> pm_runtime_enable() and before pm_runtime_forbid(), causing an
> unnecessary suspend/resume cycle while the PHY is not yet registered.
> 
> Move pm_runtime_forbid() before pm_runtime_enable() to eliminate
> this race.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
