Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C24FE6FE23
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 16:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nhod5kRYvDU4h6TO76a/Tggsw+GlChLmnLT0awhchK8=; b=HZVyMMyM0ScFG1
	ttBYQ2Ce+fH71Iu4PqasJZD2q0VWUt9r1uR4GyDE88G+WWAxLSTMEeR7aJnxrrSBCoM91BKsRM9v8
	FXRwndjG5Taw4wMF9kHZgQnAX/0HOx+nYxQmbjfn4XsqeHRe3LwGw5g+/QFCm8sSpPP7TVdet8V6z
	obP146m0Pfi0ohAtJ0vNHhD5fMOD4Gr4dh3YEnsBU8ZZZU482jierKTulygiMGv7Mj6/3K6YDlrhc
	OhrzP7DztmaBHgtQcGNch4MyHHUhxVTHmP5Vn7ZRNmtb3HmZwFvdvv5/85rxkoN/TX7Fr/1Ip0Xey
	n24lMqxto0UwrQWY5ghg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY4vP-0000000Fk0k-3F0L;
	Tue, 23 Dec 2025 16:07:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY4vM-0000000Fk0G-473S
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 16:07:50 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNG1mQ82747219
	for <linux-phy@lists.infradead.org>; Tue, 23 Dec 2025 16:07:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kbtm09XgsnHXRaYbnO3t36Ix
	nxTu+GwnF6MLf76D5Fk=; b=lxqpnrKsS27cpUGKjROT3DCFGQRfyFc4EHtHPU3o
	1aLM0WtZolzWCjdq7laXK69n0goUs3k6/WlL0KUleWpBX7gKKcko8kQ62ZePOnqU
	I2Kn66zunwtbOS2+WrDR+H8NHfCuapn0yH/Ny+oyEijh3Hf3z8K2KOR7VzsOuEEs
	fMxiu87lxO2dMdeB+jtAT0k/6usml49X1Y9D8LBCgO8K/93nyUx9dhulS12xckE5
	9Fng1qgAPc9gF9BvL9NisyALUWBJsBQEYX5WgXoZqJHIn7FyRQV9UXJRDMqy6MiD
	Tp5dxCcNluXcPWLymfp6pV6kpKLhJF6biumL9Kw116g7EA==
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com [209.85.128.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7h5ctp2x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Dec 2025 16:07:46 +0000 (GMT)
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-78fbf84e3f5so33398167b3.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Dec 2025 08:07:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766506066; x=1767110866; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kbtm09XgsnHXRaYbnO3t36IxnxTu+GwnF6MLf76D5Fk=;
        b=fXJyJGnWaROEl2+8derPDUB3BxnInB8meaKzYILGTnTbIfpGhE7Jct4KJRVM6s7hjF
         PlXl+/fVNkkEMUcXcC3aggXYgZNbu+e+CToG0JYQhdLR87QUTJMcGrZO56Z2z+0zFbZl
         i1CyYqiL2MOsJTzZKjP58e0qNlRdNsrBUJJcUUD0vA3iBDv7mcFWg/S8j27HWH3H+TaD
         s93w1AWRRPrQjamsezGDduB+/bz6j7bVIPyZHEoSCLkeFI0zZaxOtPK8b30devIpv0S/
         uomCr++fgvWnfDyQbfkiPnIgAARz58iezovlA6ccwqA6QxKWIil1z0kQwn/7snZj9INH
         V/GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766506066; x=1767110866;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kbtm09XgsnHXRaYbnO3t36IxnxTu+GwnF6MLf76D5Fk=;
        b=q9UqwfKXhu8xwsGQVBL3DqQSPJphazfPCGghJgx9chNHOEhP083SDZ1Bza/RkUhYuU
         8AVaxqvu3+2vGENvMDKCzXQYrBF5CKBoLyQgtFvI0G3I2dWuCbEeFOwFYOZrf4Jhc/5F
         v1JODF33kjbNTzhgZlk0CiFTgTWsTy8HCv0jKOzmHAenYM8kOvMIcTvJNjc41/eh7fU4
         JkA2nAxJdJuEoSg+6dAkfO0j1XZ1dut5UqYaOUz8Vl/6hgGaCpVi6YeP6IEdHKcxzx5r
         ytdNZQuNFv8fpGspJ93xqdVdIr6QLAicAN/jfliVFWvSTEJRJ+fTwu6AqEsEW1ttSJFr
         vCHg==
X-Forwarded-Encrypted: i=1; AJvYcCWUS8iFh0c3mP7WTQ3FJdWR+I1rGXmF0i4tinZP+Q/+T9ziy24XjEFlrUaMRyfuGLtmNifwepG9UEg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzSCCXI/1oWtHXu97rXfA/nBN5SBAjdfcXh3D1HSRCV13hdVyJy
	Rb8vR7dXIew1hNOj4vsFl9nWj8EoGgkwFEOtJrZMGRAx0NUlRjmB4uP+ieXQ5q7fcJxZ1ZWW2RS
	4cVR3LI2iuCPZXd37LZrXBywI91bK4wDRIcjNmy8saR4DFWzHLMncFa/hOqhju8WJfUnQ
X-Gm-Gg: AY/fxX6/Oue/njCTKSXbJC8vqxtPNve2rBSIlGMs7SZ6VeaoFWJA61e1MNjOwoikKwv
	Oz9MUUBxQgm9grUfrYuAkUeTa7yvF+A2YX9V+xSvp1Rqq4gGHhtxqpg73iLCX/ovMQHuXdaI4df
	gjXNIuGHfLG3jLNzl9Lsbbrf9ZsBG+UXbN2PF4sCsBYb0IAAfWSgqzDXq0VMeXN4aPCcsZ93zy4
	coK7vsaC3jg68hnD1InAX7RcM272dyPZSsXvLR3a6tFxQJKT7W5gNO9LYTLZGGYTBV1Yi2/ka1B
	slqo4g5nteepEy79UOJAxHIG5kQdKkKmi/dN/QsT6zkALBiWiTxNSsL0Cf8AcLzwlUpyqYoWVNL
	9Lt2SW3PHiNLy7QHunmDj6w==
X-Received: by 2002:a05:690c:d1b:b0:786:3ee8:6703 with SMTP id 00721157ae682-78fb417c7bbmr116684457b3.48.1766506065942;
        Tue, 23 Dec 2025 08:07:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFSHQuIo3pRz2riwwISQLa/iVvhExEFa9vzYsYI/lDVGWXoCsnaqj3YhJahBtrnysEZI7FYqg==
X-Received: by 2002:a05:690c:d1b:b0:786:3ee8:6703 with SMTP id 00721157ae682-78fb417c7bbmr116684247b3.48.1766506065469;
        Tue, 23 Dec 2025 08:07:45 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm14291553a12.31.2025.12.23.08.07.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 08:07:43 -0800 (PST)
Date: Tue, 23 Dec 2025 18:07:42 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abelvesa@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 0/2] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen4x2 PHY
Message-ID: <mzs4x5bme6oewfptxx3tt5cdwuweu4vjptvd64ika5p5i7kj74@3iqgysicqugu>
References: <20251216-phy-qcom-pcie-add-glymur-v2-0-566a75672599@oss.qualcomm.com>
 <aUq2VWecmWRNX139@vaman>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aUq2VWecmWRNX139@vaman>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEzMyBTYWx0ZWRfX3uw2VlpljfQr
 KZyYxlG6ncePN7giYKbaEKeecnzFj3c5kDKT6fMIL9XckAzeVBd3uf0o0kmAKEfM75mPFkdibRP
 g273jmFsaJRSUJvSvG2UwIGFrrYv5jX1e3mo8CURaTstQD3JAWuzTKmhguZwdO459jUDAJ6xU/t
 R9fVp1BGheXTYBcEAsoaDTbPThQchlIxEZa8SRCy8lapYE6JTE53APNR3yof82C26LNf/CC1dh5
 kCUmZ928gn8Le5jg4PWszPAW0PmS8mYPAXjzLIJf6etPmSojjU78QbaRKFITV0usuY1TARElpWE
 YoDpWD+1fKTcLMzeECQzR9Edp6lgeRhM40iZ8VfD6yegOCkDkuU9Ly5aJSSdgoMh/GNcgN4WymG
 PHrJn+nd2pF2hQ/KOb28Q5osu82sC5Rxsy1P1KMYtUYwRFxk311CfvkgOcTL12HEI/29ZxHyyT8
 nJgVswQ/1qiEyDxnAAg==
X-Proofpoint-ORIG-GUID: _xvdNVNEcTQwVM15GYcDqEUZ_55pK_SA
X-Authority-Analysis: v=2.4 cv=LeUxKzfi c=1 sm=1 tr=0 ts=694abe52 cx=c_pps
 a=NMvoxGxYzVyQPkMeJjVPKg==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=kz76AC6XHOyiVgLuqU8A:9 a=CjuIK1q_8ugA:10
 a=kLokIza1BN8a-hAJ3hfR:22
X-Proofpoint-GUID: _xvdNVNEcTQwVM15GYcDqEUZ_55pK_SA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_080749_046051_63AB7FD3 
X-CRM114-Status: GOOD (  12.62  )
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

On 25-12-23 21:03:41, Vinod Koul wrote:
> On 16-12-25, 10:25, Abel Vesa wrote:
> > The Glymur platform comes with two PCIe Gen4 2-lanes controllers.
> > 
> > Add support for their PHYs and document the compatible.
> 
> It fails for me now. I guess I picked up bunch of patches which is
> causing this. Can you please rebase on next tomorrow and send
> 

Sure thing.

Thanks.
Abel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
