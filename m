Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C40606A323
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 10:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ON0XGues;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=KEQjnbvA;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=De/8Y8DE
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jpzRCatkhcukkaGHq3/HhdBzwHM3Ezi59jAsoeAhB3U=; b=ON0XGuesY/X1Dp2FKGJaOXHeTM
	ClPj///cuj4eORrMeT7+ppEdr9wgsBXEaYqOVWG3XjuUwRLp43AxvFCQTTkHbFDdFDAD4VsMOyvyP
	y082MdiAKwbGVVUzvu3QBXy78nneHwYtl4adI1GKboUnwlXHSs+hn3/81keRTZCEDYYSuBiYkO87D
	I/5JkxVEXQ7vUuAFJuiiA518V9IrLxrTqcpzFcq+EmmJkL6POUFS+g+khg0BX4zg4Ju9F6bpgpp8D
	ig8OX5kGqcib5MPxQ8ZdYBiRY+H0ZYBJpmeJXViKmbbwb0nVBntSU+6SYMS8aoxPFtltX6QI3Ltjg
	fefRZn5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWAZf-00000009VjG-2csK;
	Wed, 25 Nov 2026 10:50:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWAZd-00000009ViY-1fqr
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 10:50:02 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AP9mXPP2121347
	for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 10:50:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vAB4Gs4mUDK2JcpHA4TmhZZdgElajeLPnIQDOvFI1wQ=; b=KEQjnbvABhREXPEh
	rXePuuh91i1CzoZcCK8P5Er501LM4GTZngciauKOyTLoiss4blcUXUv3DzWSEWng
	MjuOebo430ASTwXXk/TfzPCFvnwU4eg8pICZ6Nv2k/fC6zvsJH57iWmjcu9thI/O
	erx0iVDCZZPEit+cuWqxw2bow2RNLjAEe9HCfnIgPy1Hns+heWWUaEOyyXeil6fp
	PojudJ9nHSLoNVw1CIBhzNxk/J267YoAZYr+g2jy4XSSNd8+Am1tmOc92IFBxzxc
	A/nO71CMxAZBkyavORK4AKm+Itq4LUDJfeznlriGK/ecvoOGwQ/TZVzAvLzcAZn6
	OJsQeA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j5vukrera-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 10:50:00 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8b8cef34b43so5915403b3a.2
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 02:50:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795603799; x=1796208599; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vAB4Gs4mUDK2JcpHA4TmhZZdgElajeLPnIQDOvFI1wQ=;
        b=De/8Y8DENT73CgPrQz78YIH3PiJCOL3BkHI1nA4xzJnLevnuuxke4RuHiRG9RXhIo7
         SXPRQ3Cz4GqPA8fQvYqLmghyZFRjScbigd6lu8EbycHNHi1aX3/C6Hw7wHLHxzPhdLcN
         WPyyUEKplyJh5bhVPPeGDApcCwgj4j36ROEHQq6J8hDDaQlsuvN2Sp8T1jjBSZS4BbKO
         6SylUyKUjsHbIyXnPuy+4K+UrQn61xPU6tqbLIRYAYrWWzVK0usOi1FXAVBN8lCyym0k
         W2ZMRH4URoh37SiVpT71dN6TH/5i7cjwlguLo7NMhEXGizLHkA8Lbcrvb5xgJ7flOteP
         CtFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795603799; x=1796208599;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vAB4Gs4mUDK2JcpHA4TmhZZdgElajeLPnIQDOvFI1wQ=;
        b=xXTLAmQ5OiCeUYoemkPd/n+DBr4QFPzdiyvFASVQdo+fLTwGCnwz3DwPni+erzaiMO
         YCK9XseqQORsNDhTYYylYeslTIDpMmPkG0iyl0iW1+RiWZWXFDT3eX0vwqW2sNzasj0N
         gAnMIVCz2GNEkWwG2NZcTZJ4Gsc9hiOJFt5LYJzafo05IZWEyCP347E1yx7nEYfTU2J/
         UszMAsi/aMpWKjz+loo1eFWEdOEaxKv7+mI6VpkRgVltAAsvSlwT0LBJ0vJj8XDnaK6y
         3/qnShG4gZ9/X/7+2LdNw9WdGRV2arkbEAxuc7egvw259a2IYSDDt+2DZUOPvGPgMHu3
         MQOQ==
X-Forwarded-Encrypted: i=1; AL+hErH3uFNtj14dYQ/+i01Y77XI7k860ME2n/PGR8qCF9nvUJyIx6Sab2qZMquOssa6GZ0CoXA57nZ+dd8=@lists.infradead.org
X-Gm-Message-State: APuU4Z9L1NsseP0+zuGNH/A217DCxz7kQdo5a0u8BD+aGDoDqDM8xX9E
	II43bCYzNIKC10JvIzjgDAHsB0+UMKXENMykRLhe5jqDOPvputMeoJ2cM9wnYRVi9aDORtxOzdp
	XGUWiwYVO+Q89aL1pW3czYrCzet58Qd9ZmvYi9zlh1tRLIBOwhhrqiy38zpcnQfaSARGL
X-Gm-Gg: AZFdTZcg3IrhJ9fIX7gVD1Df+eIXUQe7oJ8oauiWHGtDYgGGNgu2iJWAbjbuFcLR4up
	KkCqYmiGrEjDgi8RcTqVTihUsSCJ6imbfTCsAeXlU8LCkKuM6tSIVKFkhuhrBaYzjKDhrmOASAR
	g8FMEsFliUTZPVdq4fDqKirVJQoVnI5gKM5EKHqOoIugM7y5f6V2nK545HLgDMuzK1qxDsnbbfa
	9oOhlTGJHh0quVQf+KNBDGQlFAZ6dwY5A8UX0Wij6SuWbXUlPAFFTFcVmhdEl1uBRpt1urKzuz4
	OhojB21ZTGbQSCwjLwBFroB0zkVvvHS2ww6Cg5CJujBHbwP9dUSND9J6RsXIYqwfJDqamIGh8rh
	M+SqB2wIgKG3zovxsl1ELUdhgFoudknUkRIMfyWi1PE/MGnQkQDc95wpsQ5x+luBthCsVkT3eed
	qX7Q==
X-Received: by 2002:a05:6a00:22c8:b0:89e:43ee:6541 with SMTP id d2e1a72fcca58-8c87c38b606mr15448573b3a.34.1795603799120;
        Wed, 25 Nov 2026 02:49:59 -0800 (PST)
X-Received: by 2002:a05:6a00:22c8:b0:89e:43ee:6541 with SMTP id d2e1a72fcca58-8c87c38b606mr15448559b3a.34.1795603798657;
        Wed, 25 Nov 2026 02:49:58 -0800 (PST)
Received: from [10.206.111.19] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c87285c228sm8621213b3a.10.2026.11.25.02.49.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2026 02:49:58 -0800 (PST)
Message-ID: <53376589-db38-4281-b6b6-f12dab891dd7@oss.qualcomm.com>
Date: Wed, 25 Nov 2026 16:19:49 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/7] dt-bindings: phy: qcom,sm8150-csi2-phy: Add SM8150
 CSI2 PHY
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Andrew Gigena <mail@andrewgigena.dev>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>
References: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
 <20261106-sm8150-v7.4-rc1-camss-v3-3-0103e8a0bbcd@andrewgigena.dev>
 <a9ab1add-5f04-4687-83bf-ca29a068ee33@linaro.org>
 <f127954b-2255-482b-aa3c-cedd2311f77e@andrewgigena.dev>
 <a519c2ff-7d0c-4aac-9a17-b9e76913d659@linaro.org>
Content-Language: en-US
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
In-Reply-To: <a519c2ff-7d0c-4aac-9a17-b9e76913d659@linaro.org>
X-Authority-Analysis: v=2.4 cv=KfVHIgYD c=1 sm=1 tr=0 ts=6b06bd58 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=RbXr6DfGU6KKkcIXwz8A:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: 8GLM0zxMsPqICs6EfFTK-jhNN4SEtHE6
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI1MDA0MiBTYWx0ZWRfX5jcA9QFigjRw
 Izpg3VwAopLZkB6n7JLnsOpIYjFEPsfWJ9OhVhTJYYlQRVks3ksHlZ3OdPMXUC9dzrImPKqoLYT
 TiEMyad9xmVxhiZXRviIeMVrNy2b1BU=
X-Proofpoint-GUID: 8GLM0zxMsPqICs6EfFTK-jhNN4SEtHE6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI1MDA0MiBTYWx0ZWRfX/HeG70i5Giol
 0jdPLMM+RO1WvMCVY1wRLI4p9O/3nmpiwZ5ejKMrnplc1lriYiMD0ySR+FmqFUNhaEuArfG4mOr
 GY2FV20jse37cV4090K1ZkWfR7mwtzGM7vJs9ftMCQiQiVDsJEqCZMfwmaSrq/8VNLpZyGxKglb
 T/BDO+yiJbHgIRpPFLos8mUi1tFygRNGuBTMh1OAM0pOcodkUxXGqZukAMZ8Yddl3RdXFnve0/K
 3yR/tkcgx2srvCYlh6/AwYOWAti607ztz08s8VDTfdJ91hRUpL8JqpBGsQrS701DaH/Iv+0yND6
 4rrWsazEzDYBSu7IpKYp5h6esnkz8dEofLRag3FrmGOF2m6VJcUBDXAHdZJG+vLqapUXRJpxfDx
 a6Zg8J98farqWMxvGBOIEDwqUZYsSAbqZW269MRF18TRxDWejjFHyxZg8jCBYKqOl1t5VQo09SL
 Qi1UduFdtVYlg7JIJfw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-25_03,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611250042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_025001_569132_3AF52919 
X-CRM114-Status: GOOD (  31.90  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Vladimir, Andrew,

On 24-11-2026 15:45, Vladimir Zapolskiy wrote:
>> Hi Vladimir,
>>
>> Thanks for the review, replies below.
>>
>>> Please double check if SM8150 CSIPHY v1.1 is capable of C-PHY:
>>
>> The hardware can do combo mode, but the driver only implements D-PHY and
> 
> "The hardware can do ..." is necessary and sufficient, when you add
> a device tree binding description, anything else is irrelevant.
> 
>> returns -EOPNOTSUPP for C-PHY, so the binding stays D-PHY. Would you
>> like it documented as "not yet supported" anyway?
> 
> You may add a short note to a commit message, but definitely not to the
> hardware documentation. Hardware is not dependant on driver status.
> 
>>
>>> D-PHY combo mode is also supported on the SM8150 CSIPHY apparently,
>>> it shall be reflected in a way that two endpoints could be present.
>>
>> Split mode is described in the binding, but the driver rejects it, so it
> 
> Don't look at an incomplete driver at all, when you provide hardware
> description.
> 
>> cannot be used today. Is it fine to keep it out until the driver
>> supports it?
> 
> This change provides hardware description only, and anything related to
> one or another driver is irrelevant. However since downstream driver
> provides support of some hardware features, it tells about the hardware,
> and therefore this information should be represented in the dt bindings
> documentation.
> 
>>> In downstream camcc-sm8150.c, PLL0 is on MX, and PLL0 supplies CSIPHY
>>> clocks. I believe MX shall be added to the list of 'power-domains'.
>>
>> You are right that PLL0 uses the MX corner in camcc, but that corner is
>> internal to the clock controller, not a power domain of the CSIPHY. The
> 
> Formally yes, but probably CAMCC driver should not enable the MX power
> domain, if I'm not mistaken, there were arguments against it and to
> delegate such logic to a clock consumer, which is CSIPHY here.
> 
>> PHY only consumes the top GDSC; SM8150 uses legacy GDSCs, while on X1E
>> MX is a real power domain attached by the PHY driver.
> 
> Here someone from Qualcomm may help to get better understanding.
> 
I checked SM8150 in IPCAT. For the CAM_CC CSIPHY clocks, IPCAT shows
that the clocked CSIPHY path requires vdd_mx and vdd_mm.

TOP GDSC only controls the camera/Titan power island; it is not the
voltage rail that powers the PHY logic.

Therefore, the SM8150 CSIPHY node should also vote SM8150_MX and
SM8150_MMCX.

> If MX is truly not needed, you may add an exception for SM8150 CSIPHY
> dt binding description.
> 
>>> Still it would be preferred to get 'vdda-0p9-supply' and
>>> 'vdda-1p2-supply' properties.
>>
>> Renamed in the binding on v4, the driver and the DTS, matching the X1E naming.
>>
> 
> Good.
> 
>>> In general the change looks good, thank you, but likely it can be
>>> embedded into the scheme for X1E.
>>
>> Clocks, register offset, power domains, lane table and timer all differ,
>> so folding it in would need if/then blocks for almost every property.
>> Would you still prefer that, or is a separate schema acceptable?
>>
> 
> I believe it is good enough to embed SM8150 CSIPHY dt bindings into X1E
> CSIPHY dt bindings.
> 
> These two pieces of hardware are non-compatible, but they do belong to one
> class of devices and can be described by the same dt binding documentation.

-- 
Regards,
Nihal Kumar Gupta


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
