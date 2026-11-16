Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE1B606A88A
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 02:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=nMjjR/7J;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=WJrJOScF;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=VuJOMryL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=TnOTriGiWwxvdCEZhRKspT5ZKfjeAjce16VxWRohEZs=; b=nMjjR/7JgME95P+Cww0qwGkB01
	r8Z2zIsUClgpPWAiwXmPmH8xVCh9hSCIwpKJfrSpvDkDX86LVos8wjvsINmyFOQWZA49UcRO4nhiy
	zHEH2KreWYOw7lEmem+TQJds0qvt76sjgdY+BOXBAygA9XSzW0VlOF3/HpQCQSMiMlgkubYOgyF8S
	w+JRJu1tVVBuUHhRRnRoyIxoVv6P70/MrDoWd2vG8fhWoXFjAwn9ho8EzwHdvIQ5rNKmP0FXnppWC
	d7aSMrR2kbbsGRefSKKYYYRhVC5DE2dH3/igBwMg5se8HZBud/LRQRQ2xCizgAVFObBXybflUNB+3
	lYgESgRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSmbv-00000000xT6-09KO;
	Mon, 16 Nov 2026 02:38:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSmbs-00000000xSh-1LMZ
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 02:38:21 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AG1Krs43321457
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 02:38:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TPjyQUk+vMBvodq2mBZyZe6FH5D4rzEe4fEpLwevuWA=; b=WJrJOScFWbmhsj6y
	AXFvn9SBm43IzYWGZMwIAmxaGxjIXxdlt9wkxfaTSbQ7E07Q0BxLROlUAfuguA80
	EmRTzEg/vKjuBQwh6zpA3hekDlZWsN4v97sul0/C/d3k+hiHtr6ZpjPb5W7rnR9h
	cnJr2qP0IUs0zf5SZEytlzqfqrfUp5LKlRQXplO16NMFIyoV72mI7tBcyJ+9Kzsh
	XCez1LSHjOKwOQr/TscCiudCBtJdt903ne639VG+gBHMZ4Z2RAuB4fmBINzLHpvQ
	ivVLHIJWMnuTCc+nVuR4SNNNoosywSJYae8TVupwaAtor8SM22VnlQjRgUUtsf+1
	OH+qUw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhmhmbyv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 02:38:19 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-944138ed63fso470108785a.3
        for <linux-phy@lists.infradead.org>; Sun, 15 Nov 2026 18:38:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794796698; x=1795401498; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=TPjyQUk+vMBvodq2mBZyZe6FH5D4rzEe4fEpLwevuWA=;
        b=VuJOMryLTjElcKSbxYEBGKQ7Vbb99+GEUkEHzrmOi5I08eZ3MFOSBOrcIme33q8PiT
         zaXvZ1fBc9IBNQLMmTOD1v9sVX5SfX4R8Zwe/aVUFJWmozvRvdrpR/srbyWlmOonV3dj
         BCMabIoUTUpbFAmXwd38P6N82LsHpEeYpypva+F0g4DNRgwdcvXmxOebQG+CG/3iSNHe
         /z7PbiLS9eqxmvdrHTFPVxfRoZlHRZHjnLjr2oPL35BZ99Rr77XrR5CZbBYZbFKndq0l
         01gskbkSK1nB4HHKvqTWN+boDE5pzX1h4w0KsAIEJ5D9iCBwFIyZBRJeTd0q4gEIxTTF
         wKMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794796698; x=1795401498;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TPjyQUk+vMBvodq2mBZyZe6FH5D4rzEe4fEpLwevuWA=;
        b=Hx3MCF06c6n4LjY4cTT0Zgt3kd2Iq4lO1Z/h/5oQAzBMxPk3kSkeeEhjNTsvezkLpJ
         pNYoo2lSUZJiZ9+3zLNtCC2G7HYPXCXDt0LXkveY6wOgxr4T+41EZIOJjVAV7zavpUas
         TnZjcBFP+OHzBKtfYt18/tXL6wI0njTD7G1Jsp3FnEQ46lJudFuzNaF9mjiFKgPOCLx/
         qFlPMiDmxzAPh1v/7S7G72Hy07qROsvwUIMFa8t+rZKHEUirSwDUDr+uWuYIcJzM/Wvj
         klERu8tP3zP+DYADmv8t+ft/EmdpGBYWQFK5sMbha7pGJjDUUwuyWkGe5gaNpS71bkiO
         OQkg==
X-Forwarded-Encrypted: i=1; AL+hErHnjHfM/jPv0emfk4G7uUS72E72JGwOthKyV1gUHJfpZ/hls0rR1asVh3+uEulHrfgAlODaa5Lcd3w=@lists.infradead.org
X-Gm-Message-State: APuU4Z9LocFrnzdO5iRneTh43UA5NIOQLDF3U7mIBNtcJ976v56GeQQd
	7zakUiBheIXgNKSKZ/ur+UGBLHu1WzpkUOty4VxG5HFoi9gJXBI0SirepNNx7UYqnXUcNQZ4Z8/
	y0phBfnw2RFg5gio7vAfgKDDn83Ib3pJDTbZJJpTsNlwNhp7+eOIWVeXsstRZW7LO8zqW
X-Gm-Gg: AYBFou2lum7cmAsbCR8F6PNAR5HcfinMgI38mClx0xkR7OwkpNwUVUeMvMEBzIvQjt8
	yYZ2b2EycjG9M9GigOkWg1n8m7MnKI3zCaoq9CtQTyO9ybv5icHiXwegEqCgBhbsYiQmjSC3gu9
	YXu930dESnQaAk5UZG79qIR7RQ72b9soNSJolEVLmOkOjXC0nzckVuKmA/VZNhAEyIVv5uFF0C7
	Xt3RJfk7BgaSw7q/XoE0Jypc3Qp/mNE9pqPmUnWHGv3h2k9mrB5IW6EbrcSVWm0FeYE+cYBXafi
	LRd9MLvy2eECB67VXLmi9BBUMHnK6c1EOwMeG3uUhD3+fy+AROKEe5SBeKvK/so/7jUFoarip3I
	XQGosV5xT4a1T5uUpPf72v+UVowTBq4mrp+4AS4MpDDwMlwhlbcv9DIabhhBblgzxeTUNmkX5SS
	wl3K52yEAD4rSi0M+AjnRgt/m02w9btrNYqg==
X-Received: by 2002:a05:620a:370e:b0:949:7502:6a8 with SMTP id af79cd13be357-94975020921mr471816485a.56.1794796698171;
        Sun, 15 Nov 2026 18:38:18 -0800 (PST)
X-Received: by 2002:a05:620a:370e:b0:949:7502:6a8 with SMTP id af79cd13be357-94975020921mr471814785a.56.1794796697746;
        Sun, 15 Nov 2026 18:38:17 -0800 (PST)
Received: from [10.38.240.54] (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9497a4f1bccsm186560185a.36.2026.11.15.18.38.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2026 18:38:16 -0800 (PST)
Message-ID: <d784b5e9-af98-40a2-8670-6c12208983dd@oss.qualcomm.com>
Date: Mon, 16 Nov 2026 10:38:07 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 01/23] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 SM8750 CSI2 PHY
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Frank Li <Frank.Li@nxp.com>,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
 <20261114-add-support-for-camss-on-sm8750-v7-1-8ff2a11835f6@oss.qualcomm.com>
 <20261114-voracious-capable-guan-99cacf@quoll>
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
In-Reply-To: <20261114-voracious-capable-guan-99cacf@quoll>
X-Proofpoint-GUID: 64yqNMubgEF6inr8NHU8RtztjgVlzUSY
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE2MDAxMCBTYWx0ZWRfX06LIt+g2mHWL
 MdcYxYSI/vtkAVWtoe8bQQFMlWYYFkCBHXJKtGt0w3L2fClem/KKLDeYeSnDabECctWCrvSMeNu
 TT25Kq8FeJ9tO+jB9HiD/UAVB/rdUyg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE2MDAxMCBTYWx0ZWRfX3xtWoz2eZFTq
 Dh77oluvdnenfYXAfupQgaS2LjvaHoOm0oZi6V3ACYMTv4rmrTJJLeFtclgVOthZKhuVaYFjBlq
 be6fWkiqPQpY7rLUMzh6iCWNZcekGoq/y3jNZrON/x03Ju7KAwdfFUW/PCmyVj6pJs+R1rVVUiZ
 OpXynWr5v9RmH9BDpNAMnT0xxbAs6rEsohW9qKU9bV+dgKO/1iLHJEhKW0eE7IV5AZakc9cbrsO
 etNw0UMfNyc0lYYwitZHMou+qyNVY2uhIlmX11n+teo9dfpJtJTDdJsGdE2KzXhovdtP+UUJIlT
 szQ6Uf4ToDCYDenaQDtpzrylxjcjv2tSEYbAFrV7Q0MlZ4uWTAyfWjAI6Z7hU7vJ9j9UV7L+zZ2
 Dela0KhQ2GJnM0/2FrkUn9hPfKrzm+uKIOnwBhR55coNlTTrYaoVxhHKcYmuxVMfxEj4maAWQqX
 969y5bGb7azOIK1gj7w==
X-Authority-Analysis: v=2.4 cv=e/2T2qp/ c=1 sm=1 tr=0 ts=6afa6c9b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=4xkCrKK1q9XhPcYNJToA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: 64yqNMubgEF6inr8NHU8RtztjgVlzUSY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-16_01,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 impostorscore=0 bulkscore=0 priorityscore=1501
 malwarescore=0 spamscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611160010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_183820_374159_EE738AD7 
X-CRM114-Status: GOOD (  14.20  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Krzysztof,

On 11/15/2026 2:11 AM, Krzysztof Kozlowski wrote:
> On Sat, Nov 14, 2026 at 07:29:18PM +0800, Wenmeng Liu wrote:
>> From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
>>
>> The SM8750 camera subsystem has six CSI2 D-PHY blocks. Describe them
>> with a standalone "qcom,sm8750-csi2-phy" compatible, so the CAMSS
>> binding can instantiate the CSIPHY nodes as separate phy devices.
>>
>> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
>> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
>> ---
>>   Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 1 +
>>   1 file changed, 1 insertion(+)
> 
> Does not apply, so should be squashed with dependency. Why having it
> separate?

Since Bryan is about to apply the dependent bindings and driver changes, 
I kept them separate rather than squashing them into this series. I'll 
rebase this series once the KNP series has been applied.

Thanks,
Wenmeng

> 
> Best regards,
> Krzysztof




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
