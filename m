Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D285D606A326
	for <linux-phy@archiver.kernel.org>; Wed,  4 Nov 2026 22:39:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3lcp36Vh;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=aDEmr3Um;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=AiFjtaJO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=JjodhEuAMx9fY6KxG9w8c/Uxbshs3KQtyj8BopyqpDk=; b=3lcp36VhlsgJBVGWtDOes/tKKx
	62im7nhwFTsSpngVkE9GOuJ/oJPh+lzqtYFTBXXBK/9I1pSrzr0K3laH1Cp8VXWVxlD25aVR7Spms
	j3ZhVujxwgAIDUW/0R1Fl8FYo6TOrRh/m6HNfHuaZXGuRwb7cLzEKmihLi39TZCzW8W0byh8Z7Fnq
	vxtOXQt1oxS9cxUJ4QYznrdaGYfopYkxl5+IzMOWazg0SaTnzoC9RBoI3QVnvGlq7pMuNcu/5uN4X
	m1hOrfOYRHwQW44TlXa+Ed8xUZcf5uk3ZjXuPkzqdVbh5WzfNSV2CMQSHuRk52ksSyS043JBa1OH+
	YYCLqQnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOjeA-00000007AY2-0xcG;
	Wed, 04 Nov 2026 22:39:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOje8-00000007AXC-0T7F
	for linux-phy@lists.infradead.org;
	Wed, 04 Nov 2026 22:39:57 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A4JE3Fs3680379
	for <linux-phy@lists.infradead.org>; Wed, 4 Nov 2026 22:39:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PJA9ZjVWgygH4tYxEI+jP8ouDsYJfs5Yih4eQhnKOCY=; b=aDEmr3UmzEamOC+A
	xPEzrZZTgcNgdzsecmhH1CcBswhJqo4oektlcz6lO1H+BUCx//LpLnBC1jbPf2g6
	bfe0uNlQfrLEpRIIHcHRylCJ2cu77HNQkvhu5//NagvpcLduczchdIGRrZ5QFeFD
	VuYDU7lJtSRng8un1Yqwa4F4pY/SC4u/rXgrQrwXZb2ivGFqgbKhMvESs9j533F0
	NO+r0hUyhySwb+4RLPhVmPfPuJ91NW1h7keHYE2v5maUsAWjmisuokFVmKAd0FSY
	j2XPl3QIgXoRTvAB72hXjIOXL4jld6pxHV+m9o8bfIy9czFDqgGiNl6YbdXRgiyQ
	P0LLUQ==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hr6bj1ynb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 22:39:55 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-36de26cb4b3so492319eec.1
        for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 14:39:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793831995; x=1794436795; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PJA9ZjVWgygH4tYxEI+jP8ouDsYJfs5Yih4eQhnKOCY=;
        b=AiFjtaJOz7vztOoE+ivf92WqDSnlHxvr7nmYgJZIskoyP1QYka8fiueAh+4pk1JENp
         N06ur5tIG0xBy7RFDLEszVYrRVVTBxIBWoAm3FLDR2JJ1pB9lg5ZDrBVyxddddzvmEpx
         7nnooKFDTeECU1lehmnMVP0uYI8wM52H22sdg0cpyk7737dnZNpMlq/m5ve/FVjrfoyj
         SYeLqV0wS1hMsMGWtRFcL+lN3UZE0NbRTGbEp6fPO3pjcSJ+UuNhXiZrDySnHXiwUJl2
         Km/q3LP03iEWkoq8MPhhVobVlAXWtn9Zfy78nFpzBkfx0H1qwgHzoQWwXhdo78bfomux
         ELbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793831995; x=1794436795;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=PJA9ZjVWgygH4tYxEI+jP8ouDsYJfs5Yih4eQhnKOCY=;
        b=nKKjumK7rkZ4Uq+ocC6nZ8PaV0SiT8bGIk+JA7mDDcPiJUJXqx13YQvZMj8gqniT4/
         MkDyuPzvzPKHg8ubJKXkeybXzdLgq697Iah1nqJCaou8B1lj2MFoU1lrWxYIn/2dyGjJ
         GYCPbOk6DbRht1TdS4OxgmhRPUxaVwfD7cSRWoTulnFX4Ub/dv5yPqOdYj9hrx5Uk6WZ
         P+PWFGBhKVAUP8KV0CbPJWPbtflH/2JE1mLeKuP2xbb8f8eD/5xyJcthuT1DPQLOVbKu
         eRSA/tKD9YnKNZ60GGDg9xZTGwb/Fn/h6ThggUIqdH2ydh8WuuBNM6W4EPsgx+GSh5Zx
         WhJw==
X-Forwarded-Encrypted: i=1; AKwUvBy85WUtje1cxm0H2bfUVZ8kWaBLixrPtGjHWaU/67ixyodZclbQ/nyuhXE0gB2ygolTdYqXzlkRUEs=@lists.infradead.org
X-Gm-Message-State: APuU4Z8vJV8ZBXzHJphn/9/E8QeeMTTwwfiPpKNgN4e3jIUUfl5Sjmam
	qsZiU7BGVCCDMnulJ6PXY/vQTYstZTeOFwaiIYnonIhSIfYPGLnYJ8tly6P5jMNqk2tZnALwCUS
	ClxxpLtKCWxCJ1s+Mn9flQob0oplXQ9PRitDu3t+KkRiF1K1xxm/+V1CoAlNb2UEsiAWLekgKDu
	ij
X-Gm-Gg: AYBFou3wzQzevmVoFWoD/0gM05Z+1Waz6RpT+/9dEVgusvBq3hWG9rEptzUootuQWY6
	8OdfRMcyKRio3NvUhQJlY93fR0lKBhx9lW3So2LMELuKf7iTUdvFuTzvoDcx0pU9uJwU9B6Afrf
	KXjLf4qyuWd6G8FKBjuJUQMbhN5RTNz/FV+RHLacbwmXrzwLqG+BDk5EKi/7R7FXRCgxsON1Jx2
	e84wNBkKeUYEXXByuB2hz5NKHkJe6EVptTzcH3itYAjcJf6e0L5s3lGeXuBIWqv416Kngyptwu+
	6Q8MeqhcCCbAwO/U4zSQGxggJdnBp0t++9eAwvFecvRgvmsQ00wTykCpXa6u8Ght+BauBbpfTgS
	iNUT4fzTcF2zqiJnoSzdyOfGcJi6HF+285RF5MSly9OKAC+FRXaVXHlPfOCGgl/LgwnJewORxL/
	Zd/btw/pPBCDY4Awbndg40jc691VNIWg==
X-Received: by 2002:a05:7022:ec4:b0:14f:8d59:edcc with SMTP id a92af1059eb24-1ac5c369adfmr28168202c88.12.1793831994580;
        Wed, 04 Nov 2026 14:39:54 -0800 (PST)
X-Received: by 2002:a05:7022:ec4:b0:14f:8d59:edcc with SMTP id a92af1059eb24-1ac5c369adfmr28168157c88.12.1793831993985;
        Wed, 04 Nov 2026 14:39:53 -0800 (PST)
Received: from [10.71.181.181] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36ca3788bffsm10405125eec.1.2026.11.04.14.39.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2026 14:39:53 -0800 (PST)
Message-ID: <8c0c9459-5cb6-4280-816c-9aaceffe1df8@oss.qualcomm.com>
Date: Wed, 4 Nov 2026 14:39:52 -0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: qcom: Add common qcom,csi2-phy
To: Krzysztof Kozlowski <krzk@kernel.org>, Bryan O'Donoghue <bod@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20261103214105.3605181-1-anusha.nandi@oss.qualcomm.com>
 <20261103214105.3605181-2-anusha.nandi@oss.qualcomm.com>
 <f319ba87-5569-4323-ae4c-3f9f34a9a3c1@kernel.org>
Content-Language: en-US
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
In-Reply-To: <f319ba87-5569-4323-ae4c-3f9f34a9a3c1@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA0MDA4OSBTYWx0ZWRfX3jAOaPWFGVd/
 oJJGmSVrKEgZvoKCmu/VG2wZJPO+OGD/GHSLnSrzBuo9TLYvXuVNZoxzVi0ktYsoI+Uor3fe8kU
 4OESITde0BsnG+D0rqt8EbYDQu68D3AzP2z8vw4plcB/67CJnD+6mi8JRjAepPJo8A1LXjOXZfz
 N8u7awBIqpVp6z/kkhzNRVShsZscGFEtKvEfCgMLZuQAhx6n3A95NILcRbo6PMfG510N2wKuzWj
 FRofupmdK35MwxnsrNfONxNJCtKj5PuL3cAPUyip8MapiSm/sD94A6dzzkT8wyImRTqSxHo+N8v
 nMhUlvPf5+U66Uy1COPycN1cdZwiqyyAnwV7GomgwTQiW107hdTNy8t7PTBRyyp68Ma0cClxAe3
 LmI2vk9LrC7s1Jh22TcubQtdNFXKP0GfeWKsDOSNALCwvPFDWaTN9XgAzKZpZ0A1rt00ZWBraf3
 sB4pJh3kj53OiXoxYzw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA0MDA4OSBTYWx0ZWRfX8uiUcNmFHl5G
 UQ3aMGNZq+G43RA+Lza1Bo/cAyzTaG5egNm/7QsKDxRuEwAtusuH44f5ht9UeeAfIi7imn/uMrr
 OlzGml7RUX1dbdBapqUWPlpk2m5ngFg=
X-Proofpoint-ORIG-GUID: G2ORa81PlhZqpB0VjlgTN4MilsdDmFZi
X-Proofpoint-GUID: G2ORa81PlhZqpB0VjlgTN4MilsdDmFZi
X-Authority-Analysis: v=2.4 cv=N/u8hG9B c=1 sm=1 tr=0 ts=6aebb43b cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=FDZwB5iHBSRriBojFeMA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-04_05,2026-11-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0
 malwarescore=0 priorityscore=1501 phishscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611040089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_143956_165150_363DC16A 
X-CRM114-Status: GOOD (  23.43  )
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
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Krzysztof,

Thank you for your comments.
I will upload a proper v2 patch with the lore links attached and
comments addressed.

Regards,
Anusha

On 11/3/2026 11:05 PM, Krzysztof Kozlowski wrote:
> On 03/11/2026 22:41, Anusha Arun Nandi wrote:
>> SA8775P, QCS8300 and SC7280 CSI2 PHYs are bit-for-bit identical in
>> devicetree shape (ports, bus-type, data-lanes, operating-points-v2,
>> clocks, single "top" power-domain, vdda-phy/vdda-pll supplies).
>>
>> Describe all three with a single qcom,csi2-phy.yaml and a compatible
>> oneOf, rather than one standalone schema per SoC. QCS8300 is further
>> required to be paired with a qcom,sa8775p-csi2-phy fallback
>> compatible, the same way other Qualcomm bindings express full
>> hardware compatibility between two SoCs (see qcom,qusb2-phy.yaml);
>> this lets the driver bind QCS8300 nodes via its qcom,sa8775p-csi2-phy
>> match entry rather than carrying a duplicate one.
>>
>> qcom,x1e80100-csi2-phy.yaml is a separate PHY with a different shape
>> (3 clocks, 3 power-domains, different supply names, DPHY split-mode
>> support) and is left untouched.
>>
>> Reviewed-by: Jigarkumar Zala <jigarkumar.zala@oss.qualcomm.com>
> 
> How is it possible? There was no such patch, this is basically v1.
> 
> If this is v2, please provide changelog and lore links pointing to the
> review.
> 
>> Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
> 
> Please use scripts/get_maintainers.pl to get a list of necessary people
> and lists to CC. It might happen, that command when run on an older
> kernel, gives you outdated entries. Therefore please be sure you base
> your patches on recent Linux kernel.
> 
> Tools like b4 or scripts/get_maintainer.pl provide you proper list of
> people, so fix your workflow. Tools might also fail if you work on some
> ancient tree (don't, instead use mainline) or work on fork of kernel
> (don't, instead use mainline). Just use b4 and everything should be
> fine, although remember about `b4 prep --auto-to-cc` if you added new
> patches to the patchset.
> 
> You missed at least devicetree list (maybe more), so this won't be
> tested by automated tooling. Performing review on untested code might be
> a waste of time.
> 
> Please kindly resend and include all necessary To/Cc entries.
> 
> Best regards,
> Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
