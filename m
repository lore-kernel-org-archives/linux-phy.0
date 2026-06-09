Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C008CCD8CB2
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jun 2026 22:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7wHa7ElpoPtbMYlglTLGceNKYljtiy4uJvjfw5k+zoU=; b=HQgVkNDJUKKCCo
	kcepid0Et5raM8VTsTcst5cEGo7RnX/RCcPKcnUq7pN89fyV/pDlxftVCZGhWSXTdCOmywpj4a2Mb
	1Wrsu6GwyodsEuetEp8cQUDMTxipMsIrfPhv56c7c9313eTaOTQm9Nd+uoq9QZxx+XiopbzCBquO2
	TQsX/l00/wynvvWpFBFEqhKBevV46vl93ubuEd8KJqbUw/vI1RbTbCT8aU7uJDYHrQc5zbuR7q8ku
	Efg5kJiv6EavXMz6cg1180BNLmsTLv6FwbGctQVIIemh39Ig6Bk4CdD74KfJKBpqMBB7R7gy07IGv
	GYiGWh64mJZ6Ln/vWjUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wX4yA-00000006SWs-0zz2;
	Tue, 09 Jun 2026 22:30:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wX4y8-00000006SWP-061H
	for linux-phy@lists.infradead.org;
	Tue, 09 Jun 2026 22:30:49 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 659METFO3537926
	for <linux-phy@lists.infradead.org>; Tue, 9 Jun 2026 22:30:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=La34ew2wgKgp7mm7zYqeehw+
	iy9Zo1DfBPTBVSWV4T8=; b=YS8wolOFXlrupfWiG2m0wui+utFzo4Odo5MxqZ/X
	/Rj+dd0MlpfZ2wFhtV9EpPc8h1eLN4hex0PNsC+pMERgI40TgUslRdH/BRL4kI0X
	d3JWZrZvG1ul6CgQ0DAsJbxFTfu60hNkDEiTjZZj1ej5uq7VUugR5hJ4rrUvFFOF
	THql6Hx6bI9dycwrRJOsHMfjb49iikxcWx3udysM6moU+YL07djlVe07L4kBdM1A
	Yhxoy4DnboaqFMYBUukKbhXlQN/I7oflveyMRbtVky+Nx0DG/AZvhNKfLFiqN7QV
	vq/U5pdQulAPiLR8Nog8Snq/dKy07J5z/+/KmeESvD0pMQ==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4epg3jupyr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Jun 2026 22:30:47 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-6751db2792dso3017269137.3
        for <linux-phy@lists.infradead.org>; Tue, 09 Jun 2026 15:30:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781044246; x=1781649046; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=La34ew2wgKgp7mm7zYqeehw+iy9Zo1DfBPTBVSWV4T8=;
        b=GjTglIYjRiMEsCUVy+mSpxvL8sx+0YXvJgMDLYdKcA4L4bby9xtCDkCCd8moWCY2UV
         ivRp5eqLQ5DzeBB3Gp/C5MylBOzdHWJ2KjexACMlbUNtF2ewey9HyB0tSAAMXpp4Nwtr
         3AwZgLKfvsdqk9pUxxpJYHNQgANt768r32D0/SltP4vOItfSNhSNVBtGRCpH9VJNs1K6
         gAc7UC3o1fSSFYq5vWkKfDyOZ4lIxQz0osCkvn0/ITlBO7ejRzd1ZlpRotaM6NN77RZ4
         tPe7HVj3XiDGUZI0XkG0WwY6twgASixMMEeQUclBmE/hb4s2pTF1m0MkVYNOxTHf8PMR
         C3ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781044246; x=1781649046;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=La34ew2wgKgp7mm7zYqeehw+iy9Zo1DfBPTBVSWV4T8=;
        b=JdnWMkxJnBTFcoThq+6td+EWkHs9eENUsi5Eekgq8GRg8Afk/hKI56QQPuZGB2NyFs
         l1+FtIglSfOXh5GRxfxYbJYPYPCC8EBkqmfgVh7gANVQIEitMQxQrU38rMcnHCJfvQKp
         Xdh7ga6uCoaZqdPXiIoSJct5Y8q4Tm+sQhBr96sVDLeU4/F9bLhl/WD10ZAVUzVeDcyF
         h28tw9cx/gYGn2i/cdmazhDZCeo55A6sbR4/BgzAMtw/ENAhmIsQcAIJKajSEUVRKV++
         aed+RDXFxCGO6O0/RJjrR9n/7DXw2DDm4R/s8mxgR1oG4vHxpXTpExnggoeglcovZE5/
         LV0w==
X-Forwarded-Encrypted: i=1; AFNElJ/DocePkmIBpkNdQt9xIQiYgVK6L0nMQn5/qn8Q112SW43AxaHdWrV0jUsX7FBeJMLFyxpof8LTOa4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzqf7VZriR+fx9/la+Uw5Mk+sD0bl6x1MzmiNnm16JblxqZQqOM
	coSTAuPXKdYJ7ZIAkC1THyoln785sI2HfaYEN7jEsBwiDU8mtL9egPyg4vWr6wxnV92h5rIN2a7
	p9ZFGM5Q4JIzdljmptnjp9rKsYMMuMFaifokDVgn6LlBHwkB8d2+QL96oJ4ydi+MmQyVL
X-Gm-Gg: Acq92OGnizz9JucfMG1fPk4mi399zxGYpAYmTOA9IEMjcWc9h0N4uVmUEbM3HduUoS0
	kCejebZIFBQiaCrSgllLBoyl4CpBSo7bsSTCm6LaEwDEpGjq7w6giyds5vREzFBVbUoveR3ilD/
	9XcDCxWW1uZVn2rWSKlh26glOGXkJcmnquGFZiwiy2ItlCewy3sg2RgRW4sJOxrzLVECHDhHjYS
	ncQZ2lVt8l4HrreushtfCYj007rxeXKEYN39zvpCL6x+G84sftgq2VeMz1FTyvztUMS9NEXkaGQ
	KvAdKBvdkV2KCBgf/tZQzeHAwwaZNvse/XxSGNsK1e0ihzbj6ykDmxGgRe+lbLI5fBHPtzCwRO7
	O17f//ZL57EflzXvZ2T56+1yr5Xa3tixAvbvLgog4Tw17u9eKmtY33XlCaYQvFkumbb/IH7edKB
	mLs8YVHk0gQj8WZl4ehon7g49/pKEgkpi4Xc97jBnng3P2Pw==
X-Received: by 2002:a05:6102:554c:b0:6a2:b2a1:f16a with SMTP id ada2fe7eead31-6feef09ad62mr12012585137.2.1781044246020;
        Tue, 09 Jun 2026 15:30:46 -0700 (PDT)
X-Received: by 2002:a05:6102:554c:b0:6a2:b2a1:f16a with SMTP id ada2fe7eead31-6feef09ad62mr12012563137.2.1781044245544;
        Tue, 09 Jun 2026 15:30:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b97a71fsm4952740e87.46.2026.06.09.15.30.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 15:30:44 -0700 (PDT)
Date: Wed, 10 Jun 2026 01:30:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
Message-ID: <qt2d2anvwlubaicwhw3rur7u47v4swqbctapcw5qek54f2yzdu@ljd46avkfgy4>
References: <514cf213-5778-45e1-8d70-d3fe27991fcc@oss.qualcomm.com>
 <7JNJ4dUNz4ennJ5dkzhfLSuVo72JpfZAbprICPRqlRYnSzVDJw6x3h-1nESd_PK-3us9f1V3qOiLiywsTqP8vQ==@protonmail.internalid>
 <f01c0e22-4e5c-44e7-9ea4-4bc8d53aea2e@linaro.org>
 <29e8491f-20e8-4082-8943-66bee7e3af1d@kernel.org>
 <5ca611b1-0663-4975-bd56-b1343851e5fd@linaro.org>
 <83c12dc5-fcb4-4089-9917-9f0fcc4f940d@linaro.org>
 <1b107aca-a857-4e58-a763-39c82af67747@linaro.org>
 <67b6f6ae-bfca-4afd-adfb-6ec1741105d8@linaro.org>
 <335238ae-c476-40e6-8639-44258fefe988@oss.qualcomm.com>
 <04479989-8aca-46bd-8153-1dd033f1fdd5@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <04479989-8aca-46bd-8153-1dd033f1fdd5@oss.qualcomm.com>
X-Proofpoint-GUID: flB3BJB4lTZKzPPLKaQC5mOibVTYsMMB
X-Authority-Analysis: v=2.4 cv=aa9RWxot c=1 sm=1 tr=0 ts=6a289417 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=UJ8pcXwihaggFu0x5dYA:9
 a=CjuIK1q_8ugA:10 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA5MDIxMiBTYWx0ZWRfXyI27RiasRUVg
 sghVvm/snomUQb+hck28Yl9hyEiwLEjljzWK/khi2Wx9Ih7HdlcgoWXxcgoOriBOPV7cckxcjo/
 XSGLlfU9qgqYkLYSb5QvZWOx214Cl8nDqDRvrC+WkFU0jHahT58cljH7IYzqCBNeqA7rwrQ3kgQ
 1PBz5mw2ETnHbkCfMmyeLY2GhigVgmFi1XdPD9irjfRuA7O8aEwBDCHZs/2aWe0VKpWh0M5YTUh
 yPcnGFe+ekQBs6Nav40vsMA64XrA6ySqQNww7ITMoFfRWboYPEFNmXYxYbNGqOOlPJ2yPXEp/c3
 A+TZMwP2y+NY5ZR4HKOCS5SVuPJhCb9jAcJwDrqYq3R28PzNAu5la4zMu2hWwCIM/dS2CeMfDhh
 wpRTkp53uBuxhK3KM3IKbRY7NWw9ZROb2I10Kds0jg8scx6Y2pd6CAPp6rC+KJobtT1Naee0wIu
 +so9oDY4yi+uvfZpSsg==
X-Proofpoint-ORIG-GUID: flB3BJB4lTZKzPPLKaQC5mOibVTYsMMB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-09_04,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 spamscore=0 bulkscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606090212
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260609_153048_092075_F9496329 
X-CRM114-Status: GOOD (  20.20  )
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

On Tue, Jun 09, 2026 at 12:20:56PM -0700, Vijay Kumar Tumati wrote:
> 
> 
> On 6/9/2026 6:56 AM, Konrad Dybcio wrote:
> > On 6/4/26 11:06 AM, Bryan O'Donoghue wrote:
> > > On 04/06/2026 09:46, Vladimir Zapolskiy wrote:
> > > > On 6/4/26 03:30, Bryan O'Donoghue wrote:
> > > > > On 04/06/2026 01:07, Vladimir Zapolskiy wrote:
> > > > > > On 6/4/26 00:18, Bryan O'Donoghue wrote:
> > > > > > > On 03/06/2026 21:51, Vladimir Zapolskiy wrote:
> > > > > > > > > Actually, one more thing, Why isn't TITAN TOP GDSC here?>>>> +
> > > > > > > > If CSIPHYs are true subdevices under the umbrella CAMSS device and well
> > > > > > > > described as subnodes, then likely none of power domains are needed
> > [...]
> > 
> > > > CCI is not described as a child of CAMSS, here the situation is different.
> > > CCI probably_should_ be a child of CAMSS given the design we are going for here.
> > Yes
> As of now CCI is an independently usable device to configure any I2C slave
> that is connected to it. If it is to become a child of camss, it should be
> self contained, as it is now, and camss may have to become a simple-mfd to
> make the CCI independently probe-able? In which case, we may want to follow
> the same protocol for all other sub devices like PHY. However, if we do not
> have any requirement to use CCI independently (who can confirm this?),

Uno-Q uses CCI as a semi-independent i2c controller. There can be other
similar designs.

> probably, we can stick with devm_of_platform_populate() model with common
> resources at the CAMSS TOP node and sub-device specific resources (only) in
> the child devices.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
