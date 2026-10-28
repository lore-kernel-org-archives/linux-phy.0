Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE2C606A32A
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 20:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3l+AIPcZ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Cx5URFdN;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=gREZJGFT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zgB3qLnokcdiBX7AWWWaJs70ie0+pe+qGNZGZLCtx78=; b=3l+AIPcZhNtcdtlxsY4OCO8s0f
	0pzdDctlAa4qrNyjmxszWYD9DnJ3yqpct7foP/AOWjZ8eEbfhj+8yMunlmHNcGINllfvndyVXGdda
	0TnfkcMRcwxrPzlueRyomYUsrJepyTV4EjI0Cyef8qjNxEA+Cx6jzcZa0edYcPq2A/wvXY8HObwbV
	edHa6EGg8NHeUZcLewPgY92k7UC0ezi6IVdi9MC1ya3tdqjty5BhRWM5txl5KueqnukODhSMP7rEj
	BWvl9uQ+FcU69oi7qFc0hdsjwxQOosXoeaUwgULul00PTtO2CDInhA0OteZSY9tdK98leZqXYXMtQ
	9SJTvbUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMAX2-00000007wgv-39gW;
	Wed, 28 Oct 2026 20:46:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMAWz-00000007wgP-24IQ
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 20:45:59 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SIPSIF2970541
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 20:45:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EP6xULgbpkKbbLO4g2dHiDHxnCrHcDloPLKgANcrRB8=; b=Cx5URFdN2cNg87ly
	4km/gBAr1vP3quNlgWTQUPHqp2DGyuTrdh0UZgUkt5DIzUaMfRxl6IhNHdmXgJz2
	/ONVKUl2soONKkTL5RHtlwVtqpyqgjfTITcZz3wJPLUS5/PpGUq7nq4+TrKg0p9q
	gawfFjdx5BXN69YzmZC+vKWk+tu4ip2Th7eE61AM1yWZj6XBZLaEUsTwIdSuwATU
	2C4pbO4wkG4ngEpdKdYo93Mtf87/H6L63Mcvvj+Tj+qFHxByQV5an0NMn+73J2t5
	yfqimq4AqZ8KpgdZijXWcUEzy3zqZNwaHOR88K9oyaYm9zG93wxH4JAUnNQmfsQF
	f+SPYw==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkkehsebq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 20:45:56 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-351788121cfso3514638eec.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 13:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793220356; x=1793825156; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=EP6xULgbpkKbbLO4g2dHiDHxnCrHcDloPLKgANcrRB8=;
        b=gREZJGFT3dmsIzjdcUrt83ymKOAXfV76ea7nQ4H8UNmagL6UJ2W9RFR4T1sa9Dz4b5
         uGQr9i/JfqgBthd770My8qMEHHDZqHg4Iq0c8y/LdRLvjulhOoQV/R/C+iRr8KRNc6dl
         y8YBc1AVJ4cX8mGWKDynCbzSVugTUccBItA2P8P+zO1x3eNK/rnycdHfaYqFZ7gHrci3
         YxMkW4rFiXxQEbUJI7wM0rgufOjnIPO9kg4jYylSQQKv000hmVREJzg4XNjIzB1j9U37
         LPGnO50SMXv7jL6woepKQlExQL4KI084cHKHw5CmhSSAGvKXD1xzsZ3Y5kR0ypM3RvyK
         e9Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793220356; x=1793825156;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=EP6xULgbpkKbbLO4g2dHiDHxnCrHcDloPLKgANcrRB8=;
        b=EyT412fZmxSzSJUWiQycBEWrET6pd4bu3yUTCBR0y7N4WzvGkBG9JsMV6OOrPlBiPS
         QU+fpdEw/0c9iYInbW1PJuJWFjO3SA+HrhPlTnv+0kFm23GoucBp+7zpAKjDCJDxnzIZ
         WbnQ/foh2wmGWkwn5KK8Cj7X7fAxmoE6cUlKQS5uLD4Hr6adCTVFEWFol85LAvmxAtWM
         GFtPioS9yoU152vZEnlpMFZdC9T/7yymZD9m6apBQC253sctU7UGviqlGNiUkvHvVrIT
         VWQVuCsLCocBH6TGK6xZcnXp8OVc0MoFAZq5+QfKvK+DgpBmgaSjpS2E/j5zF/rVKGeG
         ikyw==
X-Forwarded-Encrypted: i=1; AKwUvBxfEZK2FWERmbOYhNcothwOBFvxOH6a/30kCriNbt4VbtK/vFeJQWz7QWgW/ee7bT41TiwTaMwThps=@lists.infradead.org
X-Gm-Message-State: AFq9FYIzyy4qBs1bJrtblhxGASRKM+78cQeyZJB4kJBJP10MAxGt905S
	LjqQGzGuE76mnFqylrW0GbIFFQc/Nv0GOuoG39joI8GUWUD3dL14qwsyoSNqyTA3d9geZW/lyXz
	auQ0d9+/ftNWKssYf3RgXLFy4CM0PwINWTiD49AuNVtpMMdqO5Gb+F7mvBQnRwcTWT05Y
X-Gm-Gg: AYBFou28w3TTT8gdqEspnLVRTi/omfIkm3+DPC/Vdgiv2fh7itaP7yJmBp8k6r4gYR6
	EJwUcP7U5aq+x9v1IfzEBeQBm68RboCUq/FKsdddtnX9WyQ7A/PI4h2qcLzJpz6Rv95/75sMxSr
	IK+hwBcYceCeKihXnHIv0N2JP/9dz6s0NochkKx0nkkcCCEbEnk9bLMrXWAlSTVoY35A0mOsWdH
	Z4G978ifytsXzzlswswGIBM6aEifNTjr9tU9xJCraxRUdqTqRkn409/YTU6HOif6w91Kmx77rdr
	aL/eN1vmSW6a9zgggOfT4KVgSR8VDcWbSbilSglfK3veUOfsrfeyy0JTanPzvBo+ZSYGggq+f44
	b9P8IUkFkbPPvPNsAIAjBzDIL/gElKN/bNybeww7fvHwzRbo4x4xezUPwu4II2+S7FQBqSM3oCg
	HW3Xg536gNVVsxCNkQl9SjbTnSo/0gDjo=
X-Received: by 2002:a05:701b:240f:b0:16b:fdbf:4a9c with SMTP id a92af1059eb24-1a6cd7799damr3970922c88.23.1793220355929;
        Wed, 28 Oct 2026 13:45:55 -0700 (PDT)
X-Received: by 2002:a05:701b:240f:b0:16b:fdbf:4a9c with SMTP id a92af1059eb24-1a6cd7799damr3970883c88.23.1793220354960;
        Wed, 28 Oct 2026 13:45:54 -0700 (PDT)
Received: from [10.71.181.181] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1a75f7fb28csm10326914c88.18.2026.10.28.13.45.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2026 13:45:54 -0700 (PDT)
Message-ID: <1cb79561-39bd-481c-88d5-a05135f5dee7@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 13:45:53 -0700
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: qcom-mipi-csi2: Add support for single
 power-domain SoCs
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <ZW6-XDf5dgEFD66QI7ZA8WIK_alWTQD2RWolsXjlSql7pO5IUj9PM1T95LMfBd2Y3zKxRhDXXde1R4asZWzgKw==@protonmail.internalid>
 <20261028052047.2738893-1-anusha.nandi@oss.qualcomm.com>
 <58599b61-a56b-4d6b-b09f-03d813a64c1c@kernel.org>
Content-Language: en-US
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
In-Reply-To: <58599b61-a56b-4d6b-b09f-03d813a64c1c@kernel.org>
X-Proofpoint-ORIG-GUID: dOJu7bbt16kVikcKQ-xB9aMNCqgefZz3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA4MiBTYWx0ZWRfX+5D1DlM7MBoj
 Ue11haHrBsD3y5Sz4dBYDbxB+ZGGlDLm2roOydb25vJ+OaVbNZ7WVlu6D8zROznSyXaECapmeKa
 X6ZCrticwGbngMBtEPmK2mEeyYgGGo1PqXCQ1WuJwoDwifmVlCDsTQdTcQqb8tUgXsFGaFrJowZ
 do0a3/DUQJewLkjvdOupRtp5mN/M1NfMr5jcz96hN/+8m0loj63eMbQ7epMBrIFP2j0FYaEeYq5
 KU481yOvnvpL0dc+xnjaVAfwHAuVqp2xThqzoKVxroFX7yB6UZOg6wwoA4GcSbMTxSdKlYRxsCs
 ysK0S37lXgnr9OHMayxN/aO3yScF1wJ/Eo8EhgPVsRPEF/qfmPUg9YXF0uaPYgNfM4XK+OY3iNt
 N9qx1Nw858TCR23/Dxw6qbObrgHbgrauB7LmIs4lvubUkdzJ27LJdf2tvz71lSi0ZR/0a+0fUg/
 z//Sh4QSXgo9Gm75VCg==
X-Proofpoint-GUID: dOJu7bbt16kVikcKQ-xB9aMNCqgefZz3
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA4MiBTYWx0ZWRfX6J7LJ1e5Tg1f
 +km0Nf32mZpd99W+yE2i3Mn7CHyFm/AtotUDdFQBFymFLGCOsNC916frNG1WVdh8M123JERtuiQ
 TKxtugmmkrLJAF3DIK/Y/Son82daMsU=
X-Authority-Analysis: v=2.4 cv=bYv+w+PB c=1 sm=1 tr=0 ts=6ae25f04 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=GEq5pLaLegoqB_85s88A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_06,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 bulkscore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_134557_559335_BD993092 
X-CRM114-Status: GOOD (  12.81  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

R29vZCBjYXRjaCwgeWVzLiBJJ2QgZHJvcHBlZCB0aGUgTlVMTC1saXN0IGNoZWNrIGZvciB0aGUK
bXVsdGktZ2VucGQgY2FzZSB0b28sIHdoZW4gaXQgc2hvdWxkIG9ubHkgaGF2ZSBiZWVuIGxvb3Nl
bmVkIGZvciB0aGUKc2luZ2xlLWdlbnBkIGNhc2UgdGhpcyBwYXRjaCBhY3R1YWxseSB0b3VjaGVz
LiBBcHBsaWVkLgoKUmVnYXJkcywKQW51c2hhCgpPbiAxMC8yOC8yMDI2IDI6NTggQU0sIEJyeWFu
IE8nRG9ub2dodWUgd3JvdGU6Cj4gT24gMjgvMTAvMjAyNiAwNToyMCwgQW51c2hhIEFydW4gTmFu
ZGkgd3JvdGU6Cj4+IC3CoMKgwqAgaWYgKHJldCA8IDAgfHwgY3NpMnBoeS0+cGRfbGlzdCA9PSBO
VUxMKSB7Cj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAocmV0ID09IDApCj4+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJldCA9IC1FTk9ERVY7Cj4+ICvCoMKgwqAgaWYgKHJldCA8IDApCj4+IMKgwqDC
oMKgwqDCoMKgwqDCoCByZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIHJldCwgIkZhaWxlZCB0byBh
dHRhY2ggcG93ZXItCj4+IGRvbWFpbiBsaXN0XG4iKTsKPj4gLcKgwqDCoCB9Cj4gCj4gU2hvdWxk
bid0IHRoaXMgYmUKPiAKPiBpZiAocmV0IDwgMCB8fCAoIGNzaTJwaHktPnNvY19jZmctPm51bV9n
ZW5wZHMgPiAxICYmIGNzaTJwaHktPnBkX2xpc3QgPT0KPiBOVUxMKSB7Cj4gCj4gaS5lLiB5b3Ug
YXJlIGRyb3BwaW5nIHRoZSBOVUxMIGNoZWNrIGZvciB0aGUgY2FzZSBvZiBtdWx0aXBsZSBwb3dl
ci0KPiBkb21haW5zLgo+IAo+IC0tLQo+IGJvZAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
