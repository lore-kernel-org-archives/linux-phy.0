Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B048CC6B1A
	for <linux-phy@archiver.kernel.org>; Wed, 14 Oct 2026 11:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ordTF1ftsYihTDPlcMR1DpW8hD5dyxidGwKizhOGevY=; b=SJgVdNDRS0T5eu
	bDNCKRvclYDKWNXVWMHu1Gyuma+lqswruFx7BLwhscDCsDH2jxuVo09/xF8w8RkhDpV8CO092Nt6V
	B3zY7zZXBP3y8oNgWrEvXHZuqlZXd7w3ruNKa1bF8JLCbnmVK5ppA8puQSnT3jVKDcTgLij8nV0i+
	Jb8lZTBsbLf9jGLx/qcWlwO6Y9Y0/vF0leY83vHBAqUHpxa6ctJSDpiaTmCe6mttreWfhePSDhSwp
	DWE4uKjWvY9OoO/ErKyKWKH28EaKs5Hf5xtsENYHvzbEeVnPCY0kCm1MzspeVE5NhyA0KJcAxOybc
	dfmb0gdWy8HLxOtHbuZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGxOt-0000000FN9M-3fBM;
	Wed, 14 Oct 2026 11:44:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGxOs-0000000FN8s-1aRG
	for linux-phy@bombadil.infradead.org;
	Wed, 14 Oct 2026 11:44:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=oOmhRqwTSULaQOd4kzugItr8tMa//KjqQBCjrGJ6EHU=; b=o1hX2qQ1GUzKrL6XizkTfQjDUi
	Di+tBH9w88z0Zv+2INvClrmAP8k4gKH507TrbRl1zOSpsl2VjjnpFxQHkoc6ky4fb/5pN6UpvnBkh
	xykexThj8EPSJz3fhBtG9/XW3lDiP4oxb3xqWldtyyjvilhJmDZvyRpi/xS27W+8zh9weoqAShg5C
	zrJZkDyjzIch35+SFtQKzKV8NKCOpqToz5I4v6x9QwVEPwFUzcmHMn1CCfuD9NXaGaVxqsug8HLWE
	gGL3e786s0XHrjbji8WdJM0bVjRU8N2cjmp10WVCPfWyXci20vNYdKwCtdc4xaUwqJI/L27secHf9
	IegEInaw==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xGxOo-0000000GhtW-3MmE
	for linux-phy@lists.infradead.org;
	Wed, 14 Oct 2026 11:44:00 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69E9eB8P3696119
	for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 11:43:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oOmhRqwTSULaQOd4kzugItr8tMa//KjqQBCjrGJ6EHU=; b=RpQUVUf3UngYZ/UQ
	RS6Pktk/bc+ZtrJ072CpIjRk6Al4P+GVQf1ip8ByVjVZtUr36B35MRlpC8z5pGAc
	lomExjRJHQ+ppQoBxVkRKi+VSyLzE+W7I8zzKUdnWR4pmipDuG++iOgwYo5xuHXs
	VShM2RPe26cXVbaW829//jxWwGFhsOLsdQPi43nI74c6ER33c1yYXRnf9m310G/F
	aWpYJLe3UFUE64m0D+AJietD3YRJWlOHBF46qpb7OvKGCi/aBviOKMyCJEedHilQ
	vc44bi0zTJGxlSiQu5ZoCtHSHW40ZiBkhb3d0vR0Va+lK1WJc8GeVtQP0lgGa7Cp
	KeQKMg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ha7aegf2x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 11:43:54 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-93ea6b66e53so63020085a.2
        for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 04:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791978234; x=1792583034; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oOmhRqwTSULaQOd4kzugItr8tMa//KjqQBCjrGJ6EHU=;
        b=XM+xYa6x7j1jwFqmHaRcBZ0m2I4QvusfZkddXi4irPxf6SjpU9w5cUKnf01UNBlfnF
         WSuPePsvOU5kYy11aZJGDN5erdBKDvp/aDZjcfzhtcJNIWEwNAuXJawiovzWHl/Dp335
         Nxr4ksA6K66GVeD1QYaDGzYR2mpvrm6Drj9v3Z5ntGPEIxbNPRP8P7LV95kCGp0rJsRT
         7nrTRAFYmKdM3x8OHtAa3T4RgPHD3c1jN+gJ/eEFHBCin55pslLBSKNgW5+MNsrCmKHh
         pczbfy82E1eOjcXeN1+cheq+CQFRpSa1irCoETF8v92bjAHqVsh+TqQsMbJSblHHcW0v
         Qs5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791978234; x=1792583034;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oOmhRqwTSULaQOd4kzugItr8tMa//KjqQBCjrGJ6EHU=;
        b=KDgBQo066g3/I02AFnXOEqcYKL4cvC7+zVGxoNWcjUcKvRseIQG752A4pLPNbvZ79m
         faJLKfap6PCYMbohZsyfctDfkiewCSgRiwXNiHqNkcqW4/yfvn8aP1GQbb1qZ8D9KS4H
         9eexPFcmurwMjdExsGwS5f5ZFTYc3hygwjJpmWv2jIiCHdH9SDjRj12WriiZ+P4G8/Hw
         hqhYtBknYNMshI4DArhXrk/k8ii67+BcvxPpawBeBl0ufDSotF3oGvzAi9SK8QZvrCk4
         aL7pZJQ+097u12ff3zOsKMhZ70ZMdgWZQafyzstvI4z5OXj3Itc10LgTtsJzLxc41Oex
         LADg==
X-Forwarded-Encrypted: i=1; AKwUvBwsIDrkLoOnVBbP+Ijq/sW5S9Vf4NafaymElbc6ONJwJJSDetgM7HLnoQs70+7Wp7b7Jqi7jGKh4mA=@lists.infradead.org
X-Gm-Message-State: AFq9FYIRFbA9hKj2yi4Ej4L5gEmuY04gg8dA7ULd/WQvOGprRYupcsCQ
	YxdNCwZ2S6u2Q8ot0A7fKLnr6mHyl8WOyrA6YboWXtv+mZ4z2JvQLGL2VNQrsrAUweuuf+s+4aO
	srJknocG+6NoIElW1x2/dJT9xCAmq5JXzdh7UiIkO+pZ7sz+v3sl8I56SEVY/xGhObS0Gwf1Gpt
	tA
X-Gm-Gg: AYBFou3hbmIv036SPe22FLO1MMI/fiSqZoSrLIbUyoQXaZmlBsmYY+rCByjS69P//S9
	k3cbEbrtrfa8jsyp20tVvEvYBMi5rro3c5VaZhTd+lMQcRC5knVLg6pOwFqGfVxWQmOepEz2RBT
	clE0+Mg0FnrfsaCJ4f9TH1I+9qjjmW6F3SKiyqRcbUCY0qWeU0GJkBvJAwLhTWrAenz8WiconcX
	6CBgfef7A6ksjzegNcJ2edFLTAmqxji5iF3m4wYZRi7AD0rVKmGGtJlf2au22GARlwAiQGJNo+P
	v8U5vYXYiPptzXlcIkMD+VfGM46uecH+Rs2NxlxMq5L7GddCJLarFFjJMwNTXTx8OgyLgFNYCnB
	u6V67EV0bhucHEeBVg83JWg==
X-Received: by 2002:a05:620a:199b:b0:939:eb09:4458 with SMTP id af79cd13be357-93ebd1de450mr3090589785a.3.1791978234003;
        Wed, 14 Oct 2026 04:43:54 -0700 (PDT)
X-Received: by 2002:a05:620a:199b:b0:939:eb09:4458 with SMTP id af79cd13be357-93ebd1de450mr3090585285a.3.1791978233493;
        Wed, 14 Oct 2026 04:43:53 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b203885571sm998313a12.23.2026.10.14.04.43.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2026 04:43:52 -0700 (PDT)
Message-ID: <a5916daf-8d2e-4b8f-aa8d-84342b6a0e4b@oss.qualcomm.com>
Date: Wed, 14 Oct 2026 13:43:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] phy: qcom: ipq4019-usb: Propagate reset operation
 failures
To: Pengpeng Hou <hppiscas@163.com>
Cc: robert.marko@sartura.hr, luka.perkov@sartura.hr, vkoul@kernel.org,
        neil.armstrong@linaro.org, mani@kernel.org, p.zabel@pengutronix.de,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260828091857.8581-1-pengpeng@iscas.ac.cn>
 <f6f632b9-cc2a-4966-a43b-c474a05da7ca@oss.qualcomm.com>
 <20261014025124.81874-1-hppiscas@163.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261014025124.81874-1-hppiscas@163.com>
X-Proofpoint-ORIG-GUID: LqFgfa_GEodzeciLEPsy3wKvRcKnb9ER
X-Proofpoint-GUID: LqFgfa_GEodzeciLEPsy3wKvRcKnb9ER
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE0MDA0NiBTYWx0ZWRfX8f/CbL9RYpGS
 waWzRmjKUhn4v02NXATEBw6xm9tGYfrxf6beoAfdSoraJsuqcy93tUGfnhgP5aVnEfCe7cSHXt3
 rU7qRbqM+UdqzJtXVhQ5901h8ymuzhM=
X-Authority-Analysis: v=2.4 cv=NctzRGD4 c=1 sm=1 tr=0 ts=6acf6afa cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=HkQBI6gSsxkgHV7-30wA:9 a=QEXdDO2ut3YA:10 a=ZXulRonScM0A:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE0MDA0NiBTYWx0ZWRfXwPWb9lkxqpkO
 zzSx/7f21gt2Mi1FSuoKuykNtowQS3hIZu21vqtE/14vEk3w5QuO+jeTYVEKC/EP3rHHcwcUON4
 iyEwhOVGR+zAVnycTuS6+k0S4O5xJQSqeLexOXn3eP597J0iR9oG1eVZy4x0qXYg4593fACY7PH
 Kq4lgfcaoUGzp8v/WAfSPVuN9s8AWYxqrc6phAlpbtPg/trfXsgkXZeKQs31QlPhU5kb5X+CvSQ
 uCunVnPnnRP34CK1iZWkqsvNqNzbSyoHbLtqbKuDogalmJCxyvY6lEBbOw0kwuG864N9qutewYz
 GMlYuE88POtGIkAv0EZARg5ryXW5180tTlu2zTBGcIkRIfJHAiHBGNVvc6CAPprDljNcXLbfGTy
 LpkVeqYJXBIgeCYobuSCSpueczJLwS1M8CldKPs3KggpIdonZVBWYalNz2iGNKlSEjvayNvHyDK
 J9IJIgrwwE20EkKYKsg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 lowpriorityscore=0
 spamscore=0 phishscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610140046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_124359_177926_14C38BAA 
X-CRM114-Status: GOOD (  13.63  )
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

On 10/14/26 4:51 AM, Pengpeng Hou wrote:
> Hi Konrad,
> 
> Your comments on the declaration layout and unchecked rollback return
> are valid. Rechecking the provider exposed a more fundamental limitation
> in the RFC's premise: the in-tree IPQ4019 DT uses GCC resets, and
> qcom_reset_set_assert() returns zero after the regmap operations.
> 
> I therefore do not have evidence that the hardware-failure case described
> in the RFC is reported through this provider. Generic reset API errors
> alone do not establish that case on this platform.
> 
> Please keep this RFC on hold. I will not respin it as a demonstrated
> IPQ4019 bug fix based only on the local return-value checks.

Please tune your agent better.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
