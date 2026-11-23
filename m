Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4509606A31A
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 19:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=L0K/KeeP;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=kSrvkqXl;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=KhMKeU1F
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Zw7fm8+bcoIUB6dcenoecALaohoOkt6lzMBFQEJ2a8g=; b=L0K/KeePtCQL9PopC5X4zy6MrD
	0HmH31h25+GFNhKWRmUvbSUjqM6AR3gq+WwYi4nWCulov1qN64ZLDn0WDa9o4pM8XYtCPuYPOdzXR
	ThCQ87yqbLYgGa7lxUT9G5yu8rworW7e9q7F7GyrXXtoj6fkGMXTYVA+qQkD5VNvaRzowXoQJK36y
	0k8khpoOS/lZHhu1tDO07EVLOZSm8VV8lYm0rhQzp2CGoGCq70ErD75kMf6rJOerMCr2ijnSEzBeT
	rczy5gcykjegKv26g/z4kJFlE7lodFvpZnXNWdkTTCOgCfANsN75MLql7WfxxC/O4HIMct+xoJ4/u
	TbvM8CMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVZeW-00000004eWJ-34Qo;
	Mon, 23 Nov 2026 19:24:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVZeU-00000004eVl-1xku
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 19:24:35 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ANGH6F81093937
	for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 19:24:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vA8R0uS/49ozRCw0mif7wQDK
	IClLA2ZTyz78JVx+Ing=; b=kSrvkqXlPp5CBohHvqzEelQ/3MfkOygZ4Jkjxezz
	uzm6tev/oCuNoRwX6oNtqk66o4pXSm0TYGpjQPf0AyttWcyRt3H7SO3nDzBkh7TV
	04kuSBjR/NJnJylsuyUBt9aP8LH4/h0fznbnUTa3uNy5XxuMB0bq6eAPFtVl3SRP
	86N4MAx954k8rRnTcmKvgtQQessPEIKtcOL9eV0QEPKaQq7xtWKfEHXLXSjlcQ+M
	QIthPMajToZM4cXltEWvk5tpZO0oHHwGXA8Bpk9nHKy4u2DMdRTp83xllZmfhGe4
	sfPGAUwNXL9lcIm6CFHxvFVpgmVkS67DI2Nha+P0ksBOUQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j4ma0t0w5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 19:24:32 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-9211f05706bso48510306d6.2
        for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 11:24:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795461871; x=1796066671; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=vA8R0uS/49ozRCw0mif7wQDKIClLA2ZTyz78JVx+Ing=;
        b=KhMKeU1FZWNjOSgXavNUFa+dvqcUMZkyqWGBvRC8PJaRdDfGKT9oUKfHIVQhzoEmXc
         ycQ/ym5IgpOPbU5O5A4OW32f0Tt9wl+Q7Hax1zBVEwz7wC2+/KHrGV1JS5oaJW2gMSWG
         s4O2HgxavSwFo/tqKlmqOmXozRIBTHEwkjqJYXKOKVdP7Dk0GcWtsIRLOsPqAs+yBo5I
         dGwZuOpRwp3sI+mNG0/umjZD3OL2p5HBSLQNylyR51loGYaIsRhywm/p/eu/4zcORvqZ
         jZzvPw7HLv3tCgeFzNJgqTH2vBYF81lthmuXPpyz/umnZXHpDadz+EKgIpwmh6Jj04RZ
         5JeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795461871; x=1796066671;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vA8R0uS/49ozRCw0mif7wQDKIClLA2ZTyz78JVx+Ing=;
        b=zl5OdfTdzUoilEwQQzx6vcbxJdWQtc/68swg23PA0yqL5qvObTg02JVJmM6miItmTp
         X2EOAUXQ8FLiAWaI5JRJH1B7eUsidz9xia2AbDKObIjLIAGChnPjtbWhf1jLYoqgEiiN
         Io1FMfRaNa6cAeTfFFixAC5o/o6kIQ7kCeeQa7HeKfUMqSLTW3xtZhOWJda6qQnsK8CT
         vmBYQdF45WhED/EHdYWL8F3hpj098RxnPshWpapFKlEwSO8zrIx8VHDHTtntQQMuzV8I
         Xv+N9hVFUymo1CNkss+E5Wno2cDXKFx5CiW4tKEfAQ6TJBKa3Gg2GrQvoe9ewud1n7J0
         6ihQ==
X-Forwarded-Encrypted: i=1; AL+hErEy/gdrk45mXiP3TkmBZZHjbsf1DD7ZV3uwm1fOI4Q/1L1kz4JjrlKdKAWphclp8UoxpVfCox+nyqk=@lists.infradead.org
X-Gm-Message-State: APuU4Z/vfPDKExq3coyC3R8GAGnx7gW+uNN2Gty8iSaCQr4kiC5/dSpN
	lKoXfuHbS7rUEO8TmEVljhcZ/N+G8VpGuBX9IUunCnl6pwmrGrp+L9vWavsYJNPt+l8NlGowRUD
	87wJTo4komB8JNmwIz0noaQ9+WTTc+ahMu+jDla2ABVy7m1qahtrp8wQSXRXliXTGdL9G
X-Gm-Gg: AZFdTZf/2tpTN1x2QBR+EOcyFtTUznxdmAivJbrSorr0I9Vt+WPvwSOa52sABNBgXI/
	sMR54OqlEl12K/AUSlbltwnwSsLKfg598SRB6+pG32tx6pjBUPfb/Byh7enaHVabQXngtJ7m0ZY
	1ryqemSE6WqUUKp9bdrKcZfeYmUWsdDv2qHYYTlrspl5I7q+kmuwBesHSSEuifDn0s7XAOR87nH
	iJmHbg2q7xkHgerHFStGjDwxxtQJuFeGaduC2+YSBqQDrWArqqC9go+oJz/zBvlDcle3j62OFrf
	El+rGXEvn+C+AC/BXfrUYb0Xem5PVTW8Vr95aWi4vgP+tE+4bieAYxm3jOvQTKDGn2lDjXOJvCw
	OR6cOpmpI+0ZlrHCHY8ftfLebVJe470jbvxk+GoBPs9mB39/p6Oe9ACRkHvSwjog7
X-Received: by 2002:a05:620a:4446:b0:949:70f1:de2f with SMTP id af79cd13be357-949ba8260f2mr2024794185a.8.1795461871359;
        Mon, 23 Nov 2026 11:24:31 -0800 (PST)
X-Received: by 2002:a05:620a:4446:b0:949:70f1:de2f with SMTP id af79cd13be357-949ba8260f2mr2024787885a.8.1795461870742;
        Mon, 23 Nov 2026 11:24:30 -0800 (PST)
Received: from oss.qualcomm.com ([188.27.161.77])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb853c9170sm436327465e9.14.2026.11.23.11.24.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 11:24:30 -0800 (PST)
Date: Mon, 23 Nov 2026 21:24:29 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] phy: qualcomm: Allow compile testing a few SATA and
 UNIPHY 28LP drivers
Message-ID: <uxutqaemdcgfatu5n6ckqhhwp33fzotz3pv2volcgywbzifrfx@zfo67vkasbkz>
References: <20261123190541.262138-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261123190541.262138-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Proofpoint-GUID: Y7dYz_9NP1Q7nun1GF2JNka3206B1JXr
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTIzMDA3NyBTYWx0ZWRfX76tQYojmip3H
 PtDuSuRc7T36hpHfsbE79DWkDSl2lRb58ArNQDR+lqiiJEpsc6ZtWwf6B+2//lBTwqBTcGB1iN9
 kgc6dyZaU9x67bWDwbTwuX/xY9oEIFQ=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTIzMDA3NyBTYWx0ZWRfX7wahnkUesdym
 BvunxG0gHS8vWB3PIzI0NhHUBEjJmXWgknmf5XvhPQ+cqA3TaMJcwA/poDn+2BIFeneisGKMoLn
 eUEL4szCr2hsbTmhw/D3NVjaeckyCASNCSE+naldfRvqf5kRU4yVHiBkEKijHga3jKNFJhVOw+W
 rRXt61Icwhw91M1284u7uJEvK4mQO1Bxs7rNN5YhsyrqE+4nRNkkITel2FVnenBJ9KfjyykKh3V
 lzBhUS4+AdHhr54ExORyeux43ljzrCUH6p2fErOF+hdSXQVo2QcB7GmjSBdJy0Hk8vG6rRDxjTo
 ksHH0TA3fYO9dauus/Zi3MdUAhsNaojLKRLqssBIg+ob1BOJs1+pcawgVzeUtxYewvuopbnqs5h
 c8Izb4Q65ygtUTCQaqMw1cWZrWLnQFzt+FYLcyM6d0UBF8RqoQAV0bzdDDDbE+Ff/qzrWlcCUkr
 eNW6bCGgGQsKnwFDhYg==
X-Authority-Analysis: v=2.4 cv=Yr+a1IYX c=1 sm=1 tr=0 ts=6b0492f0 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=asF+/XNaGoxFafzDDLC1GQ==:17
 a=kj9zAlcOel0A:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=bASQEeq-Kk1eUeroIz8A:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: Y7dYz_9NP1Q7nun1GF2JNka3206B1JXr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-23_04,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 phishscore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611230077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_112434_529405_C3F8D5BF 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 26-11-23 20:05:42, Krzysztof Kozlowski wrote:
> There is nothing architecture specific relevant to building of
> PHY_QCOM_APQ8064_SATA, PHY_QCOM_IPQ806X_SATA and
> PHY_QCOM_UNIPHY_PCIE_28LP, so allow compile testing for increased build
> coverage.
> 
> Cc: Mark Brown <broonie@kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
