Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E60606A323
	for <linux-phy@archiver.kernel.org>; Wed, 21 Oct 2026 03:41:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4FR1FAPq;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Vssd5sII;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=CAHhq1Po
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u06eX/44i0+FvakWly3i0+VAj/idhzG1TkD/4xMY7Iw=; b=4FR1FAPqO6r3/Y
	UKeWU4mF86T8Q+5baHCenFiWPnKbRJFSogLPzeslf+XjDkGpNUQyaYrviFdZ9/Zv6HGhMvHNnH0xW
	4B85pDcPJLA117amcW0m7Bt1MzToLJPROdF9SVLCdNGqHTcziSV3ST9TPRZPxJxsipFfMGIubN98+
	Nidns4QtxcPrzYAyJZ7Ly14ysXsfd2EmIIqt8ZdAe/jFVQJt+UdRS+CRAtNrm6zQLk2YT8sLObJF+
	EPwMV3686eMJZaleVxiBaLoJW2+dfeQzcRGtCloJ1zZvDrx+rAC+It1t0+QAP3Rfi0gywgWpo1oV+
	dG541fyP6KDS7HsU2Pqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJNCx-0000000B1Zg-2PHf;
	Wed, 21 Oct 2026 03:41:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJNCu-0000000B1ZF-40w7
	for linux-phy@lists.infradead.org;
	Wed, 21 Oct 2026 03:41:42 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69L2Evf63904773
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 03:41:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z/poii7ntCkR5hoPGaSnYaJo+ShhLQXyXUGSuRcNbA4=; b=Vssd5sIIrq4j8ts2
	ijkmHc7MV0i+ppTspuxGSeXl/ZH9hsFZ3HwCKL8402xJXkPgW6jllrGqbPa+afbk
	/1usO2KZxw7ZWF+UhVts1cQ26Ewagw09xYtYXjCzXlqmrGho52GS/vTIbsNzRAiV
	ozBsNyW2T2N9qOI+UYJTUI8FToxlgY/go1Kt9EENR2IGrhWyBfpOOxwzD+IDxq4x
	Lbo86PHKV6K8irh+5hYZkARRqsJZCZq3q7Jfhg9XWEB3M5AEdkcXwvPk/GlnFxLO
	Bm8tqNtDX26AcZBX71YpEXDMWpoiYC5/HJ4k2VaifOuloot+pspHckXLJzMN7sfp
	qIaVgA==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hegs010xw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 03:41:38 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-359b81ad4e8so471930eec.0
        for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 20:41:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792554098; x=1793158898; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=z/poii7ntCkR5hoPGaSnYaJo+ShhLQXyXUGSuRcNbA4=;
        b=CAHhq1Poq/viMiJZwIbWYRyM9qtPYxJuy/WF++vhxgu+dTMKzK1DNDTlK5vRSFD5wC
         YBd9QECUFS7AlRDd5SOShLwxKI/ZBeHkYJL9adJx4KaAPWGSY3cF3erq19kBXYhxIeil
         QmK9OylS0JIrNUjMCdJp7Pd1SF8Bv2Lq3i608E+kPT8hg/jTuThPfhKJRQKgHx0a3aAx
         HF71B1FL5g7yLRrVaPYn7K0ODsvNISeTnEYelivDT6K6OBT9UWTpPnj10yzezn5+DEcl
         qIN5QKl0U9nPH+HY4UxwtorBNNa1cYjvbRpzfVHHjNZssILiWI1NTGTWoa5dP1QcPkgM
         8abg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792554098; x=1793158898;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=z/poii7ntCkR5hoPGaSnYaJo+ShhLQXyXUGSuRcNbA4=;
        b=dH6Q4Hde1ZIwLbL19mBaf2uHyT54LmA/WtHHtXgcR+zeWxcvgxDbYc9aw2DJ0j7hrA
         14inQYUDycUE2zN+O64ZTRDK3qYIybvidcS4PVUkcRIsiASMj3WabUWaI5VrNVc7Fjik
         tqM3YctyoaBJMpChQUyxh698RiOkPtlFXhcubWtMF0KV8+8xUnFKYaF88VNzEtVhIHke
         CZRQDBdJQb9FtyrNMp623kK9uEnYk0nR4NN4jvfUDbQqTz46mG7nWloQdEa4YTxUYDrl
         NYSTZI4VIEqg79IJDo4a2hHCjaElps/+/I1MrU8JqHl3aIIAoiatlQPGOoRA6HAilSAm
         TpXg==
X-Forwarded-Encrypted: i=1; AKwUvByqi9NeGhW2dNVfYPZIDyW5huRd1Wuocbu08X8Rv5l8LiXI31x/hLwzyZAp4kUJCZR8pDP+6kjjj3o=@lists.infradead.org
X-Gm-Message-State: AFq9FYLMilfv98i2I8kE/ueZufeoIhnWDBxA5puXDTq+QgU4zyk9/u0v
	nF/rmsS2ceq2L5WTGpenxqcLPCcrlOmN5X+aoSZnKg8jshXVn5o/rNKmaYtia9IyBvzQI2RukzW
	7I19mccoWI2fWpo3SI6KML+OWwodfTCs2at0alQrM23bcn7Arvp1DyQstcngAfe7p0Uoi
X-Gm-Gg: AYBFou2YCOcjLq8le+Frn40rMZAYqXt6+8QEhSR0UQ2rGQWXSssDK6+nua236lbUl7o
	JTzrhNckpx9DNBkvIwq6S+7DPcPwdXXfca3BMkUcUG129NEQmQQJl26VV3b5219qqqyZvjA538+
	cPZKr3DnXk5A8QE+Weu0rR42AN0aqMXLSz9Bbh08Xns50ARvJg/vwO3tTb4xPNNo0kHvXaYMULq
	nuYYuSUS+mr8m+iy7igIQXgciTGWFAzaa7Xp1dq1Ntojr/Iro/1vo/NAXZsudWAEJcnd92jCQwC
	JBfsDvjEMThow4c/EwQth11N3lSomLG80cRJhdDylRjc01azOhw4vxxqz/VJWN9RY81S9Z0lpIE
	U+4hO36WLes/gloipnM5znI5d6FpXkQ==
X-Received: by 2002:a05:701a:ca01:b0:151:8280:2c1a with SMTP id a92af1059eb24-190a6dbd524mr1236458c88.42.1792554097921;
        Tue, 20 Oct 2026 20:41:37 -0700 (PDT)
X-Received: by 2002:a05:701a:ca01:b0:151:8280:2c1a with SMTP id a92af1059eb24-190a6dbd524mr1236425c88.42.1792554097382;
        Tue, 20 Oct 2026 20:41:37 -0700 (PDT)
Received: from [192.168.1.10] ([103.211.19.100])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36740cc8439sm3336442eec.11.2026.10.20.20.41.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2026 20:41:36 -0700 (PDT)
Message-ID: <92c02649-454e-4b68-a9a8-2371f8a6e5da@oss.qualcomm.com>
Date: Wed, 21 Oct 2026 09:11:28 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] dt-bindings: phy: qcom: Add qcom,sa8775p-csi2-phy
 schema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>, bod@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        mani@kernel.org, gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, loic.poulain@oss.qualcomm.com,
        vladimir.zapolskiy@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>
References: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
 <20261016235502.2274268-3-anusha.nandi@oss.qualcomm.com>
 <851434b3-4cf1-4371-9b4a-57dba8022e13@oss.qualcomm.com>
 <20261019-funky-real-skunk-eda6dc@quoll>
 <7766382e-5187-465b-aa89-ff1bf9a16588@oss.qualcomm.com>
 <708b9edc-3ee9-49f4-ba62-9fc2806168dd@kernel.org>
Content-Language: en-US
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
In-Reply-To: <708b9edc-3ee9-49f4-ba62-9fc2806168dd@kernel.org>
X-Authority-Analysis: v=2.4 cv=S/NMU4sP c=1 sm=1 tr=0 ts=6ad83472 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ocEEpg4cTnoGtXECQz/e5g==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=TgBa4wLDfMOKYiLJ7W0A:9 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIxMDAxMyBTYWx0ZWRfX1RnNeSnVkqya
 GuTJ6c51JLoXgFMLxIgoAqBBBXKWsuvhDziPEuPWt5qWrHIg8n2cqnfIa4STZWY8PKoLP0Rhe5g
 MhhvZx2d/VuxnjnCApWQUlmibjPCB8FsWlm2wsrL4oLrN+SmhygIHZKxT4QXgotwZN+3a02XOMq
 IDgNTIrASaabuJtTWxW2sCr6fbrzURXtHkkRDOzrYJ0dz8zPbBhF0ABpgo1AwviSKh/oP1z9lLh
 +o/VOclODPzMC99MvDRg3a8qK4cpBlQpJoSR1L5kNXYl+Y3+tiz4VsjPW12/UAOOwnKH2EFIoa1
 TfMV4Evh4H5VDXncsmrvp5x8XtsRF7vqgmxv1fMv8hjoPIxMCxaH5jXPJO3PiDZ5WqbzGCpleGg
 l18GW/UfbN/Lkj2jng9nJ5aPrF9pP+vciib1xf4UQhSYgXw3uQAp4MpjeAYJWpj90BT3p3AI/Gd
 19V4eUJGJPXluRsayJw==
X-Proofpoint-ORIG-GUID: 5sx3cXsj5Z9DuAmFztQ6IF-_b6OtBJ7d
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIxMDAxMyBTYWx0ZWRfXyhpCMFOuF6d5
 XN4cwgpZ64AfYkdmZC9vF4SDkOVw1KOkipCyy/FceeUT3HT/T0r3e5HawMdXuZu3mTYyFBQRI8p
 O3Du16w2/tjDmwYT21JauvJojtvEeRk=
X-Proofpoint-GUID: 5sx3cXsj5Z9DuAmFztQ6IF-_b6OtBJ7d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-21_01,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 priorityscore=1501 spamscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610210013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_204141_130416_9E4E065D 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
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
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1



On 20-10-2026 11:24, Krzysztof Kozlowski wrote:
>> Krzysztof, should the binding example mirror the SoC bus address/size cell
> Why are you suggesting in review something which maintainers never
> suggested? Or actually opposite to what some maintainers were suggesting
> before. Code has correct example.
Understood. Thanks for the clarification.

-- 
Regards,
Nihal Kumar Gupta


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
