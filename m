Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64F91FD2D8C
	for <linux-phy@archiver.kernel.org>; Tue, 10 Mar 2026 13:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f4kxsNpqPQMrGWiGuG6hKXPR4vmbD1hLX5DM+cDe2AM=; b=g0qjH1yKUaGHQB
	ian3tnOh9Zl7mSpRUXEHPIJ3im9jVkvb5WxOLmZMTTwS3HjAlr/lxkDdpBwD/GXhw9gLX+BS2Plq+
	edvo+9YbfBR5SZWy31I+S7iF9SGzVhA6Z0iLaRZ/CGEToG91i5iLxWJusT7hHhQx8Wvwqsh7fnQDf
	wlx0KkOFSfRkfEgNVsS2ZsIeMJC3XuRUPIr9CD1Lg1imAUgVkjXvuTkPdkeRgdHa6PTc7egGB9XZD
	ec2H2h3n5bLI0IaT05zqOWTfWZDOVfPCqL/ltWz5U4wuqKqeLgEy73hvrRITcMQsKP8UTKiGMdkwS
	SqW9V98OQ5IKWSMwyJ4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzxIi-00000009cNH-0aRY;
	Tue, 10 Mar 2026 13:39:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzxIf-00000009cMm-3WNr
	for linux-phy@lists.infradead.org;
	Tue, 10 Mar 2026 13:39:06 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACaSLw1647102
	for <linux-phy@lists.infradead.org>; Tue, 10 Mar 2026 13:39:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mU6kQQov9ZoFh1/gT9EyHRCBhTtwnZxhMmWTUAb64bE=; b=SQ7XflP+VwtbkNjy
	fI82Md6zPhf2NeT+NSsi2xpZvmZsH+quF5rSztiiNGHu3E1Ipvsi3undAYyxvP0y
	40EZnMaPW+2QPJhhw6Ygh9Cb2eHdmjfUFMdNlBGroLpntGJJQFI91Te0mYNx+TDI
	dVVKYsw0dPUaTh7IkePIzUf1X9WRqZE+OQjls0ClomqcbOZo3OoO2O1By2Q+Q56F
	Q9ZkJhpdtNAPJhpDymbNOUyxVJBaSNP6WTb9PZhZwReTvkymsHrx4KWQysj1xlvX
	UM+6QiDhgkuTl7zXH87hQQjpM2DUD1v4gjfsdaVcRoMBLTzzO2rpC/1461SnS7O6
	OxCqZw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct8802qeq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 10 Mar 2026 13:39:05 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb39de5c54so834694085a.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Mar 2026 06:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773149944; x=1773754744; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mU6kQQov9ZoFh1/gT9EyHRCBhTtwnZxhMmWTUAb64bE=;
        b=DK7jjjjY8Ntf6PkVybcjRWDUFqan0Z9qPccJK8yrJ1rhgRQ+Dy0Z4pWSkg/UBb++Kn
         BlWvV+eL9p0vtgv8wjJgIRuR5SdOAnADHv36O3iuRFbur0VxpqQ+y/USwEoXbTr5lI7M
         zd10/Dxj8Lo2WQXKO0ZEELFIFMhy4O5Il6G2xN9WoefycEjlQiyYfxVjR9gMItThEm9o
         E7UcQtiPeU+8PKl5RAwqfxsJ7wzkIX9vGBOXSrmX3VGatMp4q4Ht/uaApSDpbrtB+Sfv
         Sw5fuZVc5Vc2uxNQw3763W2KPgucrcOHy9DCkgddpZDsZekj8/V20GR9AESMoHFDDSUo
         dNSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773149944; x=1773754744;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mU6kQQov9ZoFh1/gT9EyHRCBhTtwnZxhMmWTUAb64bE=;
        b=f1zUF/4o0cBEEBXUwJby/K9uJIMp10MWS/dsVuMaQQJfTbVdcWJ5ZsDSwAmH9Ppgxw
         FrdeMGq1X1uc9fUvnvD8nupQt++D3sV7ZFeYxT3am40NpVHi0kSINNriBEh9mFQLHDZk
         AijY+idATd72b0j9pGMF4e7YHkGMGupOWQ5bBkqWYC/1NpiOELqQbkvfUpZYy+vLBJ27
         bLFBZv4u7DmGe5jFsWq0qBy6SiblxG21V+uz1Rwok2n4hgobLNBszLn9nGz3URlXjz5B
         ejZ5GVZNQrY/Gtj//ZMEX7RdFkokH2AbYM5hUuuincY2Y6xxQ3fSLwTFjruyXrJTND8L
         HAfw==
X-Forwarded-Encrypted: i=1; AJvYcCV6BI61EYiK2x99bkh6ZV26rZKK4BGEDeQrt7zV7l9Ps+HoAZIDtoH8/GZQHEtXE/j3AEmoFBEkCdA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyPhovGGQx7xZ2fYJoo5r+dL6wKYSBXsRJaT4574w6iXKkQyDv9
	jQujUajyXwIyn9Gu8ivqFrts/qw9Tzag+gOqktCgLwEWgwCkwmNSeB7owbB2pqDK1RrXtUZwY/I
	G/V2aZIN2dcNxA1hOui6jjyp14rOuhPWPKfIGAUjaho9J2QpeAhorP7dEuUKm57z78ciR
X-Gm-Gg: ATEYQzyVE9iT+TR9w5FAyZImidOOROBuZO4WZ0xoWtmZtQ6/CzMoZ0Da3aBIzMMQqND
	cHLNpBd19ZVCKyBgWco3n90vvT2RydiNgy/76p5jK/K48R8mtPE0F6K5oPIRyVQG+R/wT8L8Ddb
	9mf3qXWARvHVhni2rAWc4fAi16d+A2Bogts8NALeDLm16phoBLTTruuOwXGubO1V/LHyGs3fuNU
	2r9nXbtbj/hyN6ZGQMzoFuITt1JIz529QZ2pYuv13kQCo4zENKa/tjxiuFehYYGrzfNrbQxVpJ1
	0LYPqB5ukCJ5TZ8kAOrpkJ4qoev5bb31NJxF2qYRz01OJv9rl6TWVv9U9vrHzEMqG9g2SG1fNns
	PVCdC2GW6jJRUExrFdGUktQLZJ/Ke710pnvmtEZpXU3JUWJkPXjExZs73QMRHZKInbKwAlkG+0m
	/RHrU=
X-Received: by 2002:a05:620a:454d:b0:8cd:8ee7:4473 with SMTP id af79cd13be357-8cd8ee7483emr512454585a.4.1773149944389;
        Tue, 10 Mar 2026 06:39:04 -0700 (PDT)
X-Received: by 2002:a05:620a:454d:b0:8cd:8ee7:4473 with SMTP id af79cd13be357-8cd8ee7483emr512451285a.4.1773149943836;
        Tue, 10 Mar 2026 06:39:03 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942f13a3afsm488250266b.40.2026.03.10.06.39.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 06:39:02 -0700 (PDT)
Message-ID: <f677e96f-2d7f-44b9-b06e-3d184777b50f@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 14:39:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qualcomm: usb-hs-28nm: use flex array
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
        Rosen Penev <rosenp@gmail.com>, linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Kees Cook <kees@kernel.org>,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>,
        "open list:ARM/QUALCOMM MAILING LIST" <linux-arm-msm@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        open "list:KERNEL" HARDENING "(not" covered by other
 "areas):Keyword:b__counted_by(_le|_be)?b" <linux-hardening@vger.kernel.org>
References: <20260304230636.27808-1-rosenp@gmail.com>
 <8d7a25e8-3af6-4adf-bcec-394895519bea@oss.qualcomm.com>
 <5bcef6ea-e83b-47c3-b75a-cfd13e4073c7@embeddedor.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5bcef6ea-e83b-47c3-b75a-cfd13e4073c7@embeddedor.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDExOSBTYWx0ZWRfX1upeRD5cZVfh
 X4n4mgjZFwM4ulasvwh8FYJQytrPS+RH53et7PKBn4wBTF4xDDbQoZmXpm/ztqgeN/T9YAO+CvN
 NsUGrUkCdQ6otj0IOAOm7mEX/wQivJc3q6E4uprU1JlcFZUUa+15aAiwL+EOzGwglvlQOC+6LB4
 g2vTC46ky+VoNFJh8NtJtxI1ZymkFbASWk2aJhifghCL6aGZM8pLHP4xZdD3cw4ifqqGXH3VhSc
 gG2fnfwx/VxdRGIlBaKTIYpVnS3AnaJ5ZS2CsfaMrBxkpIGgTHmPVQRqPU88bbAkBE014QE5hJq
 18oFU4hGrPZHqTjCQtKMn9mV6y6knlm8LU2zA0YBemtXm37mKU/TpQfttSU/jXPvcg5yx4QKsjM
 Jb7tR0AvrNyXGijm0lJShy7fNDvLDlzNrPUnWEGJHcwCBZIHzNY6JITZj61CJSaoyOI8zOSotXO
 TGAdr4Z4YfSbn6jzTWQ==
X-Proofpoint-GUID: hxe5RQOh6RODUm4fokuEA_LVh5EzkuG5
X-Authority-Analysis: v=2.4 cv=Jtf8bc4C c=1 sm=1 tr=0 ts=69b01ef9 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=pGLkceISAAAA:8 a=VKeVQuaD_P8mbeh0caAA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: hxe5RQOh6RODUm4fokuEA_LVh5EzkuG5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_063905_883166_533DAF9E 
X-CRM114-Status: GOOD (  15.06  )
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

On 3/5/26 5:52 AM, Gustavo A. R. Silva wrote:
> Hi!
> 
> On 3/5/26 19:06, Konrad Dybcio wrote:
>> On 3/5/26 12:06 AM, Rosen Penev wrote:
>>> Allows simplifying allocation to a single kzalloc call.
>>>
>>> Also allows using __counted_by for extra runtime analysis.
>>>
>>> Signed-off-by: Rosen Penev <rosenp@gmail.com>
>>> ---
>>
>> I don't see how this is an improvement - __counted_by() is useful for
>> cases where we don't know how many entries there are, but in this
>> case it's fully deterministic (as priv->num_clks is a compile-time
>> constant)
> 
> Will this always be the case in the future (entries being a compile-time
> constant)?

While I'm not high up enough to make those decisions, and if I were, I
would very much not be allowed to disclose them, my personal prediction
is that we are probably not going to make many more 28nm chips, if any
(see filename)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
