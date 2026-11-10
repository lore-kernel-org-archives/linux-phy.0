Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 811D060A2637
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 11:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Spxtg1rs;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=J92lIBLz;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=H1M57pmA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=MPxwfc+VELTHa2P2WWfNuC1O+Q/ONeeetm69dQIpTGk=; b=Spxtg1rselRIs6UTJBkcgM/lAW
	YC1d1KnGTg6+ZnInfKx+hUts0LS9uIy3C4GcrJb97KbZn7/kYcfY3o2IuHI+9m8mOH5kJsYX5u535
	zkRanzud4LCs/ahSWnASeefWPIeuZzQ2AkEZVXXZtvfzunIUO2lCI1a5X5rW8IMeey3qdh+0+T6Y7
	pN/+Y3DenNxdoxY5QO8bBR9rbXyy8JVO36/VAS+WX83/IWMdxrNyVJ7fxqUwbBxdldnuQYQblBj4/
	NArN3fH5TjrFvKvU45btDHraB7ZcLOxIkhdQxZR0SZ7EYMX0r6R4Vn6txy4pBYZL58/6RjvaWEZvz
	hnsLg/cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQjzJ-00000003cqE-01xZ;
	Tue, 10 Nov 2026 11:26:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQjzG-00000003coy-3JAR
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 11:26:03 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AABAaiO3850896
	for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 11:26:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DFIbWd7oUG0ljPJ7AJNbkhIESmFZoRW/9paFOujjb3Q=; b=J92lIBLz7pYKGw8I
	gZYjbGVL16cWaE8Sz+HU0uAiPYgVwztHHmPRL2TKDdY1nIehM3EJ4hYL7xLtUqqV
	/5NscAeXvx4qccy0nmqKQTI4bqhuU25c8v+jW4OxoDjmTBeDbDaEn00DRYOZa4mO
	dZpftPY/ClSCL+wHZ53Dj1NDQxfnc8UiDGar6i2ng+XCorBR9HTh3N9ZofF7T3M1
	tPEAh/nGNmiL0cxsvxJtByDCPF2FpbFpBUGfoXYjCnxdSljFMaYsSrcJDGUdaVcs
	qIxQ50h4OJul+438na8X5PJsMOHEPpQCbix5jxvvSKh2ULmO2biLNVUiGESYw+s3
	g4ZxQw==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hufx84fwk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 11:26:01 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-30c0d568830so4655592eec.1
        for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 03:26:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794309961; x=1794914761; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=DFIbWd7oUG0ljPJ7AJNbkhIESmFZoRW/9paFOujjb3Q=;
        b=H1M57pmAqvV0EkDeL7h5EM7oWEsM0vpThVq/x/OAYakWynRF003JOs0I/jlfgvJknO
         73Vd5M2SJu7psNuCi+ZQLq1dLzJOdFxsezdjfBJVLo5es4tDGi8b+qjvsRrH1FESXxZV
         vICWTo/nZI3CtKmR72L+HNssyohQKb2zMrJ4mfbQ/fdOCZ6luTni3cD7itJtAX9qWaB/
         0XT1a/VidCc1EUxXIbW8BKBe6GBXV499kvfU8Bwh8eeIlzoBW6PZyNsVr91fgndJvt7X
         8FXm9pgB00vhP6Qa3HelV0AFavgwcKQgPEjIBcrxPTiVMlvEVGCElve8CIlziG5j41lT
         nT5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794309961; x=1794914761;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=DFIbWd7oUG0ljPJ7AJNbkhIESmFZoRW/9paFOujjb3Q=;
        b=aZCRJN+H6sJVOBMHc5pTaByWKiGcrIef3rLabIOOzVfVftnEouGrSBoFX/R8jU56F1
         bR7FvnGX7mDw+JhhMfUhVyrgDOH4SulzUbWj/IBLrzWIc6JeNT0N/3LPDpxSeIWXZ2aa
         Tr01ZZfC1HamHTJig3z2og9dv/SlfO7tIXJ0RXGR0RV8lEukg/a0jVAaEw67uVNr1ZsM
         G1YXBq03d2ao90jutOgPmv548e4bgIYfXHB4d2rqUnb98XxSgkcbhKCW5e2HAoRCsQUX
         0xmiHzdwWfzT+gGapcqgtOnY6SvlcfIiEyt777+32vuO3iz6NQuk8k4yrkreH2hcVW4Z
         zB8A==
X-Forwarded-Encrypted: i=1; AL+hErGfaVnQnh0GfAh1nZ92appVa8/uXHZhRaZth+c/2JsHf41fR5xPYayzqqyzVx97VQ3RSACl71q2TWw=@lists.infradead.org
X-Gm-Message-State: APuU4Z+bK9goLXplQJmgXqzk5zCzCy2R9JSIcl+qWbqTfcqzGVaCa2ny
	tYBRdi6T12I9EzRHy5ptmCuDp7jq4bKFPn0+k8pDYS6p6qnIU9Rr2bB49NaETl1lw9TB+Jvk67g
	0eR1r7F7r/+0SHT8DdugIX0vgV0l+U6YkRehlpPCp7vwsL9Li07Pv4edn3BlhZ+TvJdAq
X-Gm-Gg: AYBFou3adwwTSzBZ0+hG9yYVQEg0hRvIP9mbM/ubOdl5fBVTSC39cIh1qYGYpqbv0NZ
	rXOCneJkMSxX1dc3O5SPL/thWn7YfK6k6zhPgMkH9FTbKGGWDmW7z7gxdU3K9s5Lo1N3obyapky
	cLoRyhvPPQfmdeYjA5djz0YQdvB0JusSTK7vPevzt3DMtqiQcgxGTXNH4rbUcCGRmrJFZV3dEZ0
	3eF1/eTrS82Q954zZ4vBPH5VL3T/zmc0blOFPQ365XSKoNAcmRTIE6W6VdcYYk4ESXYcHMbil4O
	VX93/PacfO2ck7qQ0LO3CgSisVhOvkzgbh6Cyhv8/aPYm0sAkX5+sZf/IhDZhKEsdrkW7ZaTn8g
	TbZwD3bP5G/TnvvNynOl6mf1uRy3ZDOHbwE0bNSC7G+AFdzBpjerprRMyP36kFx3Nqog8mp+Xil
	HT
X-Received: by 2002:a05:7301:6194:20b0:36e:d060:8bad with SMTP id 5a478bee46e88-3751c53edd5mr3132153eec.5.1794309960574;
        Tue, 10 Nov 2026 03:26:00 -0800 (PST)
X-Received: by 2002:a05:7301:6194:20b0:36e:d060:8bad with SMTP id 5a478bee46e88-3751c53edd5mr3132114eec.5.1794309959917;
        Tue, 10 Nov 2026 03:25:59 -0800 (PST)
Received: from [10.206.111.19] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3751fe306e3sm6930570eec.7.2026.11.10.03.25.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2026 03:25:59 -0800 (PST)
Message-ID: <65133a8c-7b10-4429-b870-62799cb50d4d@oss.qualcomm.com>
Date: Tue, 10 Nov 2026 16:55:51 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Subject: Re: [PATCH v4 3/6] dt-bindings: media: Add CAMSS device for Hawi and
 Maili
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org
References: <20261106-hawi-maili-camss-v4-0-d528c7a797b4@oss.qualcomm.com>
 <20261106-hawi-maili-camss-v4-3-d528c7a797b4@oss.qualcomm.com>
 <20261110-mindful-snail-of-business-fa211e@quoll>
Content-Language: en-US
In-Reply-To: <20261110-mindful-snail-of-business-fa211e@quoll>
X-Authority-Analysis: v=2.4 cv=AbYkjHXG c=1 sm=1 tr=0 ts=6af2ff49 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=tb7J9fPpy6OZh8FWujQA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-GUID: 7PEV-OX2l4v8nBtSKxpXIBLQCFCUNyuG
X-Proofpoint-ORIG-GUID: 7PEV-OX2l4v8nBtSKxpXIBLQCFCUNyuG
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEwMDA0NSBTYWx0ZWRfXxwF6E6mckfC5
 SGb073Gc5YlHmqhQ8GgRKVP0f2ey4mrfZ/6jaTARack7zaxALxPNgR9SnNoNamOH84L+kT9XggQ
 y5OH8QINFwPjRbOOCoExvYT6XoyJw0E=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEwMDA0NSBTYWx0ZWRfX9huyqiIadL/8
 pmXwPa3AgsgOWDVikmVW5PYUcN7RfzoYKYaSu+knkuoGY94Mz1hBLf6C5ieVR32kA3QTEADdhHH
 zwNow2W7FJ3xFnxvXwfx0UgBNZfff0EYWdXjIwjckaz1d7X/Nn+MclEfZ5q4YSepssmyqbwPNQY
 bxszhsJgR4XHbkz5MJQ5kD2Dm/OUQLQgdBy8KrwNs6nDzBRwFDEVQ2W+KUoRQOA4PWh2jucmG/S
 gkF9Gnr2Bkj8giSktmW6kAsbDyuqN+riMAb80LPEt5ZPWZ4CSHvb7HPLbWiog6JpX8lcwS/x0PG
 iCOJBTz7h2q9zRNkctnq7JzJG+FZOEFZ1gD5Ttsb0OQdveXxg73ewIHCg/nfB4zTntQxcYOLJHp
 uK4PgqUFpyd/uXnJmefM/wjgPTrfruEAPR0P4MibOa7YcN0tcXs9RNbGlMfxqGfuHk87SqhJCob
 HhIxVzDYwLwRZULHaFA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-10_04,2026-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 impostorscore=0 bulkscore=0 spamscore=0 clxscore=1015 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611100045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_032602_947641_BAD27489 
X-CRM114-Status: GOOD (  11.22  )
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



On 10-11-2026 14:58, Krzysztof Kozlowski wrote:
>> The Hawi platform provides:
>> - 6 x CSIPHY (CSI Physical Layer)
>> - 3 x TPG (Test Pattern Generator)
>> - 3 x CSID (CSI Decoder)
>> - 2 x CSID Lite
>> - 3 x VFE (Video Front End), 5 RDI per VFE
>> - 2 x VFE Lite, 4 RDI per VFE Lite
>>
>> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
>> Co-developed-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
>> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
>> ---
> Amount of dependencies here makes it not possible to apply and b4 diff.
> I don't even understand why PHY patches are dependencies for media ones,
> but if that's the case, then this must wait.

As mentioned in the cover letter, patches 2 and 4 are for the PHY maintainer,
while patches 3, 5 and 6 are for the media maintainer once reviewed.

The PHY and media parts are otherwise independent and can go through
their respective trees separately.

If this layout makes b4 review harder, I can split the next revision into
separate PHY and media series. Please let me know if you prefer that or 
existing layout.

-- 
Regards,
Nihal Kumar Gupta


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
