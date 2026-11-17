Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C35BA606A335
	for <linux-phy@archiver.kernel.org>; Tue, 17 Nov 2026 15:03:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uGHWrn97;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=IjYLqhvo;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=erFSc0Ib
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=uKyrQJvm1NHej4wyMWq19GeW9pNknDGRp2D+B5SH8e4=; b=uGHWrn97ShEahoZdsECs1dO9nk
	nRP6uV3Zk21oVdl3jYMrqmDM0k1f2aemZr5fWn9rUfgFKoyv/CmVqubcwikqrpKXtPwgf337bJt0S
	yBm44aByimyvMz1YpOEAQbO5evq+UVt7a0w+krvmBw2Gubk6n8l2Zj4wdAVXuH5qzFltHB0dYXHFo
	dZg8GzJDsg8vOMIdrUvALoxWqOkY6UbsvowruZ2UgkvhWvnZQXk3akp0svC8cOOMsejMcLzeA+45Z
	fGy7vnXki2WuYlHKhlbbnWEmHYtv7CcfOwiwLLM3E4Sm8qzJbbpdgUvM2c3ruYBNb60+ws6ruwPmz
	PkIyOEpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTKil-00000006Ff6-1T5x;
	Tue, 17 Nov 2026 15:03:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTKii-00000006Fdn-13cG
	for linux-phy@lists.infradead.org;
	Tue, 17 Nov 2026 15:03:41 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AHC0os31457367
	for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 15:03:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FhDkCY+HRr1h2SeUFyi3k83ZYwhiKXXvaa6v5p+Q4oQ=; b=IjYLqhvoDTx9eYks
	sIT5oTYw2E5MkagUa+mevANfzpfmGN54T0YhBs+ckHnPfL3vRHD4/lR2Oq+faCym
	TFlCK0Tol6wN+jll4NzC3tSrIjdSks89yw2MMTpasHQanE9zCgqpwew0ISI3VEj7
	heW9VdDAu+IzE6fNLNa3lG2txvlouUdVxDKlSfbBETkzGECWQ0+i664otnL2RFI+
	hZqlPRN7LTZn+k6Z8MQKClujYwgXm6BzxyHxUYQTLPBU7YaYg7BxuPGtbWsc7WuQ
	4VBCEAZ1Lpc952f1YLSaMkayrqmaaAt2mzBu1vtWBcV8R4Y0JcS8WxF+VuQaXOXm
	TK1G0Q==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j0nc8135r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 15:03:39 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5edfa7703ffso168235e0c.2
        for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 07:03:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794927818; x=1795532618; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FhDkCY+HRr1h2SeUFyi3k83ZYwhiKXXvaa6v5p+Q4oQ=;
        b=erFSc0IbUUFvjfJnSE0biRsMkpgFothxMtIndX8RqD/b+A9XUCHCTOhWltZmj1PYwN
         9758mfXBEZP+BFmuNy6Qk1lI3cN6jRsG+dc/L4mfB4iOxvhScvRm5Z/O4n4HSLP5rNWi
         bgdMHIxl3q+kjUGNe0JRAYf7+H2b3IVwEmBsTkhs/sJPB5UeKDyM2zEnxvX3OuLZxPf6
         cWsp7eczOUgwrvm+leRp4f2t8jb0dQDAq/Q737G+rY76TeAZusNVGUp5dpC7cSbxQ1Z3
         /t27POJSIF7S8MfVafbRhxC5/esyHpjfFZj+Cx+rMfGZmVTD9hTVa5gqxf2/rnMp1NUj
         aJAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794927818; x=1795532618;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FhDkCY+HRr1h2SeUFyi3k83ZYwhiKXXvaa6v5p+Q4oQ=;
        b=hKkzw3onTZzc80Xcd41AT0uR+guOaeJAdxlW7I4S16CnIJjtSPlJ2Y+QpVlgynPaK2
         PpI4H7OPGGG1j3Zz7Tp/RQjUZRjJoqZAarANY++pAnPEcywZD9Iz2SQOIBC0V1XjhsNB
         F3ObJxm4iysMwlrjatbZx2fQC115ybhyXrFNYG7OEj5tYCGcO1zJ9YCuYeD6ZmM5XTdm
         Od/Atsc+mJBZNpsggvCvF8HA2gVTwPBeNBFOh7b/eCpAJ9ilq2QbiD+4+DwO48oHMoo1
         XbTcZa89UkpaX2FWMmSMhSnuNUr+MykAUjl0Ue3IaRJ7vPEJ2LBHW8QPV9e6YbW2SjKS
         GsOw==
X-Forwarded-Encrypted: i=1; AL+hErHBwBUdCO8dZzuAS8b0NCpZjPW3SjPO7CJzeXiFsQsJlfBQWDLDMCs9NIlCgHN1U7tRdVRS8Z607bA=@lists.infradead.org
X-Gm-Message-State: APuU4Z8Fv+N3Vi1IxPxNFvvWiwUGoAPD36qQ+G8t0U6eYob1pCh0jd58
	2ucNsoAZBteqHmozpSZi0bYq37JU0QIpuzMBUj6Z5K5UdWvjac6aC2rWOPVSiR2qvy+T4ovMdFd
	DAFRQAAzzxJwILc0aUjusgC+O4+2MgPkeJhyM48lTgzZY73jkwUsDseEZfOGUj7QqGcvd
X-Gm-Gg: AYBFou0wuFcBve3B7WsKgJ9+dhvUrkmThr/neG4D/rxZJJpVlkFmI9c1I8HVQswWozi
	1cUgPtyVBTCLP5wXHd2KXQ/z9wkaNZEZX0k8nrMBf9CuCx8ieIAhAXeSqdBqWxZigk1odgH9YB7
	Zl2RT0/TYiiMbD6sd2nRNaqJT5Ryl7MSdp/cq8IvkSs7VnxZSLEx5b/rRC7CjA36CbXhtN5u+N6
	opUZrVTrHxsSqZGM4ZJXqRmpakxStf50N6HQUn0wqNB5tP2oZrDxkt8XgPKy3eE1lVbw0rhIRKE
	zSY1jh6xfb2DDm3fWXKaHuBdEytR1tUt1Ilz2wZbpZYersI3PvO8uh8bVrPVlJv6dHvV4rdNmkc
	vluUBpr+jD1oU3GOO8mfPwkonwO0rPQRq+C+r/vDx9UrdzUtlEyUiz1goCYS7yDrYu/87SsV89/
	rFGh8=
X-Received: by 2002:a05:6122:3b1a:b0:5d2:d60c:6c48 with SMTP id 71dfb90a1353d-5ee344e8201mr6488211e0c.0.1794927818025;
        Tue, 17 Nov 2026 07:03:38 -0800 (PST)
X-Received: by 2002:a05:6122:3b1a:b0:5d2:d60c:6c48 with SMTP id 71dfb90a1353d-5ee344e8201mr6488100e0c.0.1794927817243;
        Tue, 17 Nov 2026 07:03:37 -0800 (PST)
Received: from [172.20.97.52] ([195.50.164.66])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb7ad96096sm37231895e9.9.2026.11.17.07.03.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2026 07:03:36 -0800 (PST)
Message-ID: <c0b63f73-6491-4da9-b550-f5ad3d276415@oss.qualcomm.com>
Date: Tue, 17 Nov 2026 16:03:34 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] Fix up AON clamps on qmp-combo-phy
To: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20261102-topic-qmp_aon_clamp-v1-0-141c2cb6cdf6@oss.qualcomm.com>
 <179477514161.135135.15496134606156270634.b4-reply@b4>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <179477514161.135135.15496134606156270634.b4-reply@b4>
X-Authority-Analysis: v=2.4 cv=LaipeTfi c=1 sm=1 tr=0 ts=6afc6ccb cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=Jk2/TV77q6/E6wQq2oQJxQ==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=R_VssaL8g6-HNQvAZl0A:9
 a=QEXdDO2ut3YA:10 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE3MDA1OSBTYWx0ZWRfX60TdVql6X3aR
 QTrSo5LlZf/fuDF7mWk1hxtEu3rnjbiPe6N2+J1+YxKx6785Kosoikh7ILZaG/UDufC5z5roqvJ
 ihOaBw3KC6awSLfTTVnOP6jauM5QEJ0=
X-Proofpoint-GUID: wgNe0y9Wx7P0wOjtyVRH_yKvu5bXq98f
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE3MDA1OSBTYWx0ZWRfX1V4K6AwMR4qR
 hmZp98u09k+FvmHBYcSaAIovX+sVGlM5krSb9t4stQN1nAk7gtdENWMpHB7gXhgf37K1wBPzXoQ
 Z7YKWhB6nJtCPqMpcXP5dgFxJUfo59qBQj/HoyOXxyOMrPl8BKhM/5A3M4zPG0a+NpFfOlMbtUA
 7Swf9JAcNsxhzLYfr3UQGeCoB6rhv4stP+Fdv5gMqvvJ1usFr6dvmz48WdODAaMItg0ZQBvTVf1
 lrvCrmavBfwbfY6cvf/thsocJn77hTKapqkiJOzD2BaPLZTEyLR/1RB8mU1QapZ6sSZCJWA9Cn8
 9r0HWT0pAJKVCu46KoNFgsTYmM4EtLFhRDK9QK7X6RZC+wh17ZtlVMrf8Xp20YiYYod9Dq17JLx
 SLglXLVQU7xy/RsowMJ2Vdb5ao8Xp5kZvQ4bV6oJIIvmJ12Zs0gHJz4BeoMFpdCEXXmlKVVSNNf
 yR87qy+xlUjwdSCsSww==
X-Proofpoint-ORIG-GUID: wgNe0y9Wx7P0wOjtyVRH_yKvu5bXq98f
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-17_02,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611170059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_070340_303225_B29FF34A 
X-CRM114-Status: GOOD (  10.24  )
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



On 15-Nov-26 21:39, Manivannan Sadhasivam wrote:
> On 2026-11-02 14:59 +0100, Konrad Dybcio wrote:
>> Various platforms have apparently not had the AON clamp writes end up
>> at the desired registers. This fixes that up, based on the robot's
>> findings.
>>
>> Depends on (reviewed and ready to be picked up):
>> https://lore.kernel.org/linux-arm-msm/20261023123512.1912-1-26rote@gmail.com/
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> No Fixes tag for any of these patches? Anyhow

I concluded that with the amount of churn in this driver it'd
take an unreasonable amount of time to pinpoint it exactly

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
