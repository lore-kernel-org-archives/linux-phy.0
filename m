Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD758606A32E
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 19:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TK+tesl1;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=EnS5fuCk;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=EjsNUGRJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=w8p4U2msCbbaV9G08PaqSFFil/cMvxo0KGw6fCncBmI=; b=TK+tesl1H2X3sTh8FBcv83TzLc
	nnWDtGX2s9+0lva80fgABQMSjfmXDCnhiMnc123xtkGO9JmaRWqXYdg5bOjpURllveye6GLwx4c/3
	8mjAkpWR4sILnfnRIJ1DRh6FEbDK1n9VCf40NFHtKhnVd2g7fa8CivoGwQ0evpSB1GzfqXlk55rpg
	VQJf6umZFmXDwOU9VjHN5Iy8LSVK1lodKG7RCWy/1gKC8kYWn4RUhiajil0si2HFGuVukQ+HSsh0H
	jV1bjhAAIPeT8p6KNIziNVh41VPmM1zGEHJ+KMIB+MJX2f2j4aEInd/AnnUQJZgEwFCI2h5KJ0kr8
	XzgYUHIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVZbH-00000004e9C-1ZH7;
	Mon, 23 Nov 2026 19:21:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVZbF-00000004e8Y-0auF
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 19:21:14 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ANGGtDf2340262
	for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 19:21:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+w2oHKX7khEVelfhN/5lzN7uXffLARt2uBhawgZmWH0=; b=EnS5fuCkPPHmMcAc
	1PQi00QEQIZpN+D3wUtebaKQnK/T3CJq3qdEk1uV7pP+o/CfPfWejo6IeiYSpKX9
	alTkAFcN0dAAdt0kt7YV3SIpLqS3yLkpn54znWXCoGYfEVUzjQ7bqLROEmH1hPT9
	pJLNnipFow7Vbdb0ZnI0shFMjy77umrgkJ3erl2q0afDhMYC1fr+267SynfT9UAH
	Gt65X13eH30K4lvQg+JzHEOBz8maiX75LPwgrmMRGjGfPyd08cPADNXTwxLMj3tE
	7SttL++XAMG/A63h2hrNUBBWS1N4yBsSFyM9Azum+IRsFuOFmUB6P9oC3gvuNNdW
	Rp5DKw==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j4exx38wn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 19:21:12 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5ecdc7807f4so138274e0c.2
        for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 11:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795461672; x=1796066472; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+w2oHKX7khEVelfhN/5lzN7uXffLARt2uBhawgZmWH0=;
        b=EjsNUGRJ5B8cjYnxUSqBrL/3u0/MOJc78xvc/LgA3XpsPxVYgriinXnU7eex+eIsDI
         WVF6xbkwhOdCBOj+0S8NMe8l1PrSlviNhjjMZRBP9dc2dA+ZB90iAT/Kc80pkKsOoXHP
         JW1lJxbjHbL0iqahqzEEkdDCk9d6aB1Oby5PgcimbvkKfbgh9Zr9VK1h5qxeHdOpI6ME
         FCqWm3Ep2DpXQYv4K8BnAkPda59oZls+fJBEOUqA+BrljMMND1YFlpGnutctEULSkCC2
         YYQcA5M07yXIw2V2Ml60/kffHRsvCqheDvGFArkFLMipJ/eMYkG+73L7n2kY7QMVi/C3
         EItQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795461672; x=1796066472;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+w2oHKX7khEVelfhN/5lzN7uXffLARt2uBhawgZmWH0=;
        b=kXw7mqzqSIAnFC5Y5+jXyFdTPTjxt1yRBft1rJ+Z9w0zvGMzpTI9iWRBvszA5255uI
         IIUkglAhYjWrJTCOd1Vy3ipxNS2RN1/y4alr5nb+G/38NiKuaQaPyediteq07/wXjU8O
         6SA0on/TiG0jns29RtUSPA9Y9+ThdxJ7xwn7PxJnVsiLjNgOQH2CkvNV3ADNjHdyoeFO
         +Ry8Tx25E0a+bUt7qBiYEiBdIlz1jJg/1FvelTcjAAXfDHGH88YDkrh91IoYHh80oBGs
         vwqy197wz6fTjKB9kcjVoRZu4nFL8spMiQXnHsBQS63a8FqHmfw8HXZyFSWq2OJTyMNx
         TFsg==
X-Forwarded-Encrypted: i=1; AL+hErG+B86FDvhYLE7j6cutHt+pdVHc2muHx3yOdw3Y8ASdUry8MjwYw9z4iaarScmQH5W+gRQZ3gw4/kg=@lists.infradead.org
X-Gm-Message-State: APuU4Z9lVwL5e7YVmRfD4IpX3AGMydBR2PncaTGNV1RCGJnFwmh3QDX9
	5qvAF24r/DJ/8IMU5aer/M3s+qrMsNJU/FXSZsUqiZynh0XI0qAsZ5/8/A2FiM8wduKIdPfYTL5
	n7lNPXdQ8aLfGHybAbCg1lfoeCtNm6JPDT+lWoXt1hHztUfUdaWRvK/jNLkOdJmEXbfsw
X-Gm-Gg: AZFdTZejuSxtzvdOWt/qnrzkL576QWRHzd+3qQT/6LwbEwe5bzWG2HaSAEx0qj/vVrO
	yzT8eBv8UN84ysGzmn7fa/u6V7XetBOa3B7lG8EH9LiPO/Og6U+X+7cOKG19ktya0adjvVKSUVn
	0KEp6yzQ4aXdlMaFwO5zgKQ1PEIwpt31kU1aKe+c6nS13iw/zyv3JBu4YjkeMwt0vjlxw2jxMEJ
	3tUPg5eHytLKCJwKH0TAhQ4Og+Sfbx+/sKlxMNwmxLYLgMinjU2e1Na8Crm9Q9ERREWj/8RVanB
	6gvKoVjBLcbEeY5mvbEOhZORZlYgHzPEPl7GDUTDW6i9l1pU6+ZDtVbIg1uc4T2Qpwr4TfzYm92
	ilhvWR5PRzg+0Xgdh3uztP4covu/KTMI7KVQRzo3V9PDezUj8eGJvxxNhQbxmHpGQH76F+LY=
X-Received: by 2002:a05:6122:553:b0:5e9:2e3c:2f5 with SMTP id 71dfb90a1353d-5ee8ae12633mr9546157e0c.2.1795461671695;
        Mon, 23 Nov 2026 11:21:11 -0800 (PST)
X-Received: by 2002:a05:6122:553:b0:5e9:2e3c:2f5 with SMTP id 71dfb90a1353d-5ee8ae12633mr9546105e0c.2.1795461671135;
        Mon, 23 Nov 2026 11:21:11 -0800 (PST)
Received: from [192.168.226.72] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6ba370cbc67sm5754903a12.11.2026.11.23.11.21.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Nov 2026 11:21:10 -0800 (PST)
Message-ID: <e62c6b40-5c2c-4a31-9d44-dd4770486de7@oss.qualcomm.com>
Date: Mon, 23 Nov 2026 20:21:07 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qualcomm: Allow compile testing a few SATA and
 UNIPHY 28LP drivers
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>
References: <20261123190541.262138-2-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261123190541.262138-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=FKKOVOos c=1 sm=1 tr=0 ts=6b049228 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=bASQEeq-Kk1eUeroIz8A:9 a=QEXdDO2ut3YA:10
 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-ORIG-GUID: VylNuzzb2WBmKitkxjmliiHfISg7Kmfu
X-Proofpoint-GUID: VylNuzzb2WBmKitkxjmliiHfISg7Kmfu
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTIzMDA3NyBTYWx0ZWRfX+jgnZu6F2sTG
 IICgP3USwbZ+KTh8tQ5erkIXX3YuW6ZlpAlHLAXiKXE1G5rfnojfL2gH0HRfsG+nVCkYnfxSVfF
 DCjNKaUFC1qZCohwWuwHsXFs5UbfITY=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTIzMDA3NyBTYWx0ZWRfXxvl+VnN0ecqu
 r68sSoQF9UzMBo9unozWOBKV6fQBVSWZT50IIYcUB0wWwAX3MV9Bc5ZAYnlWzBoorEoCMCZgeGb
 4atIUN3Mh9cDDnDOQ9uHxu189jKooqwWkNxFf7LP2rYi7O6DwyMpxIEGhXwkagjpN7Nn/iwiJsq
 fy+SdzzvEZ1CxvMo66L96Y0slzI1Mwppdj8aQg5RAbfL+FIDSk89UUueUhtwzS6gSMDnGzoreXw
 Upkn8Qquz/W+4DvYPWqqXwHU5ufiGLABwPyT7Tz3oQxMQR6NeYmkeuKczGnv07TBrFDAaNRz1D4
 PvNyudPOqnALA9DwvpXdvc9mqjxNATW50RKFyzOf3g3HR/T5khhjcwe0XXwbOVMSs05/wnHoWJ0
 k/ZsvNxsEN1/wSsOgOmqjzHQvzzRRZ1oE6qz3jt3AXpDfkEq7ENAfAxLTW9qnGJyenFBqpp6IVc
 mJzWOmO4oyDpQIg9jOA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-23_04,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 bulkscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611230077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_112113_190590_F3DF880C 
X-CRM114-Status: UNSURE (   7.85  )
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
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/23/26 8:05 PM, Krzysztof Kozlowski wrote:
> There is nothing architecture specific relevant to building of
> PHY_QCOM_APQ8064_SATA, PHY_QCOM_IPQ806X_SATA and
> PHY_QCOM_UNIPHY_PCIE_28LP, so allow compile testing for increased build
> coverage.
> 
> Cc: Mark Brown <broonie@kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
