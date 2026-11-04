Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6293460E5C47
	for <linux-phy@archiver.kernel.org>; Wed,  4 Nov 2026 19:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=CYxhu5Mo;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=c135YuXN;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=IPCcrRrw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=He8QtwSxh8D9vSRh9tf0Y9Dfsd0pGnAer3AzJTfoj94=; b=CYxhu5MoHZ26IsGXtWz64f7GqB
	FhlRO6eylIJuba1Qxbibdk5/arinEeA9OV+MhHHhslMf543iOHNDL7p6hkAFdqQRGluSvxdBSbNoG
	8PVY82ueD12d7kSHlZlk6R2iWLDnrS3WLQZdJWHEBfMzEZTfm4TXYUPimfFPVHwuj4cpajjK7FHSj
	AYk5ah0SGiUePkWqLM/TRBLzj2LDYGqTuvBbBwnQS3HuFdmFrXKQWq5jMxPm8lbxBFZUBKedpAHv+
	KzUXJVbyW9ruHeEUFMz17qlRrjqsHrh3zj3h9nQaHzt0z/WxvrDU7j1XrIkgo1fc8TDdEr+67JGxq
	0pP8TfpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOh5u-00000006oT7-39UJ;
	Wed, 04 Nov 2026 19:56:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOh5s-00000006oRH-0q7D
	for linux-phy@lists.infradead.org;
	Wed, 04 Nov 2026 19:56:26 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A4H5v8s3037672
	for <linux-phy@lists.infradead.org>; Wed, 4 Nov 2026 19:56:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XQLFdhGEl+gprzPQzW/vHtrpFsz2rxGpuBF5QN++ENo=; b=c135YuXNvYw5b7BG
	fVpcjq7l4pnnMIm1qG2GHUJgCNnlfn8jgwbzvgnRYJPp2KAFBemfPZxq2QR18xkT
	0ty13cOiwNnHBANVNz+7DFgKWTNu6waSuk3O+FRzPab8LVWh9uJB092CYHSObM6f
	O9fh+BI4vQ/HGdk4IEr5EwS/pQ9e2D/RdFqG/w8pVdW8sXvMR5PivO5aKBxvUWMa
	qVnau7cRVYvhT2zQOaZMsQCrnGvMgkBiRLeCYvYexLRKu6tx4XMO1t40H46DhCgf
	9fs+ZxOvTPSV1gDMXEF9HY+NLzQIn8htO8rh8DpFQCZrRnNy4hQH3sXhszpcY2Iq
	/wjQvw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hr8rv0u1q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 19:56:23 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-93f1e62510cso282287985a.1
        for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 11:56:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793822183; cv=none;
        d=google.com; s=arc-20260327;
        b=j7MJ4tPTzxNIj2F2u1P2eCiWdXtzwXS7YbNaFgRu1yaMW+XEQC/wMWczoCf80qTvxh
         p23EFXHS4/+6mKi4Qm7UIfRDLf06G63kN4kuBBdZAmlk4SOJa2cENaQypdopvkhugbtl
         6RantRlwxlQDB68Uj4FTgx/N5iOpd4MceHojHQ9I3a6kTPWTtsUPTh1Cf9BWRMlIc6Sk
         i1y7QfLB+yLEIBDcDXXNf4c7EGn4cSg99cQuH2Lzj9EgbXdJLKqlmjJoHhy+K6AeYWJ/
         dur35aprpffXzoBzxgXVQBe5+n9H1aW5p67bY6dPE+YxoL1Fo68fJihVUF1p0VU1c5xr
         8ZsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=XQLFdhGEl+gprzPQzW/vHtrpFsz2rxGpuBF5QN++ENo=;
        fh=iIML/sNPhPVN9bec+YEiQUgjWxuOv9uepBl/EZyRvmQ=;
        b=BBKbA60VdGRrbeErklR4RPThNQu1m8ChSZcbKCOmr0s59zeN6tKdaS+XB99whV0QzD
         m0H7N7Z/AIzTcVmuT52iF+qYYmQL/QInRhQIcQChUQt0MU6a1eg4qPlaS17A3UvaSNVF
         D9RKfnj6Tcio6wAFe93g1+pGarTsi2QWlYBpXXc1s80HFwz11WkC+2I4qa6/g4KAw4F0
         GgGVPObgjdDndLn/fqD2SnM8smR9EI+sKTCm6BF9J4pn7UVOLDjqba6SUuplozcA8brL
         dJW89I/fNm1mZI0aGWbJJvn9A3ld9+tH9Su+m4cx9nv19kNz2q5G6lKtH5QDoxZQYPAw
         PiYg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793822182; x=1794426982; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=XQLFdhGEl+gprzPQzW/vHtrpFsz2rxGpuBF5QN++ENo=;
        b=IPCcrRrwniKocgpmGwzqYq0HNsmO4SyebOSb+U8TCAoWqp1a9e5QAwWK8v+KmMI5zs
         vsMq9C2F8KjIzpTsoqoxRSF44Bz3ZXcinkSUHqlGPL57skTyjPIES8WIexMeb7mu8OFu
         9xw3M9F1zm+Wcfx+9vxQ6YTGcLYJ9KwDEFavxEWoH7Gky+52qKeYuctXnVXF1gwxKNnD
         bc5dFPiv//O0SGRA+5rPz+a+44kMjI/z4Rgnpc8PoMFXrIdp7C/WXYt8UPaVkLQjmyK8
         nVIC5l39c+DvucsW8Iu2IL6WpvDwhRIqbEngPM8QcBNwaQP7RRO47z7M6T7zySYxux3v
         CqaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793822183; x=1794426983;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XQLFdhGEl+gprzPQzW/vHtrpFsz2rxGpuBF5QN++ENo=;
        b=TMzmxu/hP7UEZHuSbqGcW8g728v3YD5mLPrJ4TkhbN/5dlqBKduMTcq1jAbPPhMXz4
         fnlc0KMhZ3c/ApjBRznme+bV9ON+k4aeWyrk+sSwtkLgVLnhxH45VKX1rT3OtmegZWO9
         H8JqALzrM2e8zKLYTtpHhxoA3ze4VLcije0hS000oycMST1gchAaoAFKnguAphgClkz0
         7D32cMbWcYbDJ4tnZt+d/yi5x7uLkQjtlJ8S1B4B3hUYlyMjuLGl3afziSCadzOwsc34
         CNoLf9Xbz5x0WbJgPrD2h1VayG7NOvu3dy15RKl0qMIVZ1jAqnSJ1BpeqoSD10UnE2YT
         Moow==
X-Forwarded-Encrypted: i=1; AKwUvBx4f9vqbDyr8UJpxgO6D6TBbiqEJMNIu6r+GCWFYFBUi9gSa27tcJ/EQjoGCW6l21leKCGFjdrabAc=@lists.infradead.org
X-Gm-Message-State: APuU4Z8E+Zf9XzFxBl6tUl22BxaFOipwMZAt+VLEW/Bit4Mn4MhdM8ZB
	w8J/7+6e8do6iw464TqFwk0V7rTOcng4cEZN8DYsziOx9uoJo3ya6xt/k/XBcQBNjk3zd3pqY0r
	bV8AWw7Ps4slwoMbPZcglVg/dSBgC4CNR7GpMXa5AkrEmzve8IfK5J/R1WeusdYisGgEkXYebba
	+y9VV2+jdpShsJ1Ft7ivFjJK1V1SCJi8OyH0DenwYzzvU=
X-Gm-Gg: AYBFou3mvf94x2VUzf/zOsBOJ0ssOVyLvGTI9o5e/847kQ8XBR03c8ztduxNooJKS5/
	dOY2bpFae7V1oAqTQZO9LwG2k10SRO5vYAoeli+EWFH5+WdmoDEVYlthmz/WxwQRot18zQFxwWc
	QsYLFWRQccGzqKOGtUTJQYUXMK+PSBam+5E3ZEHg64tsWHFPYgs6ERKpb0lRWkb5zqF/Vp/Wvmo
	Nj7fES/mrKau661dNVBEYxgDuriY0uYILCD+xX8OajMu1Clz4gYjGUlhx0RabZH96H83ep64ul7
	XayDg+evhmJf+iGB7qoCqH8nhq58
X-Received: by 2002:a05:620a:468a:b0:93f:17e6:6ee2 with SMTP id af79cd13be357-94421585e5bmr2998714985a.6.1793822182575;
        Wed, 04 Nov 2026 11:56:22 -0800 (PST)
X-Received: by 2002:a05:620a:468a:b0:93f:17e6:6ee2 with SMTP id
 af79cd13be357-94421585e5bmr2998710085a.6.1793822182093; Wed, 04 Nov 2026
 11:56:22 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261030-hawi-maili-camss-v3-0-9742bca8cef2@oss.qualcomm.com>
 <fFfGGWaoXA-LdO6s8Xh_kQWQfncXe9YNdpcj2yNkphWHAR_V69LdLOcuhXPsbg8dEUSN4j4yygq4wPre5cz79w==@protonmail.internalid>
 <20261030-hawi-maili-camss-v3-5-9742bca8cef2@oss.qualcomm.com>
 <5817be6b-7180-407b-acb5-8c5fdef4edfb@kernel.org> <73b1f591-69cf-471b-9763-a0b719c74501@oss.qualcomm.com>
 <fac8cd6d-c3f7-4ed3-b0d4-7cb8a7a6f451@linaro.org> <d92a8aaa-5cef-4416-b1c9-46ecfc6b2745@oss.qualcomm.com>
 <CAFEp6-3ka3ZKzCoLQ5BNv0YR+yhYXVRwV6G6rM8Lx_9hZ0RqVw@mail.gmail.com> <7acf1f64-a2ac-411d-a235-69ea52231623@linaro.org>
In-Reply-To: <7acf1f64-a2ac-411d-a235-69ea52231623@linaro.org>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Wed, 4 Nov 2026 20:56:10 +0100
X-Gm-Features: AclHuK9iS-SlJNui77YNFKE0lYus5bUHSbzooakg4b1KhZgza0So8ebhpAkDmh8
Message-ID: <CAFEp6-0O3PyyytNvAUdvMRaMR3Q1Acb7KZmJmDT2J-gVfjYbsA@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] media: qcom: camss: Add support for Hawi
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        "Bryan O'Donoghue" <bod@kernel.org>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org
X-Authority-Analysis: v=2.4 cv=Vtm2kO2n c=1 sm=1 tr=0 ts=6aeb8de7 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=3WHJM1ZQz_JShphwDgj5:22 a=NEAV23lmAAAA:8 a=KKAkSRfTAAAA:8
 a=oDkJ1FRbrV4SKMjXgYUA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA0MDA3OSBTYWx0ZWRfX4Uz8Pl+iB0Q/
 Vb7voUdPjTYqqTE8EmWRVHf+itHkCpRN2Z7brksyQORt90+TYwlEsxIpmg6G9IfGfurFGv4yPVv
 MEGfoUDPPYn0qu/s+61seGF9sSZA4/Q=
X-Proofpoint-ORIG-GUID: ZlJXs4A2sbXBzWqfvIDCHkxUQFTTNHbP
X-Proofpoint-GUID: ZlJXs4A2sbXBzWqfvIDCHkxUQFTTNHbP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA0MDA3OSBTYWx0ZWRfX7O60jxSN2s0C
 6RZ5cYNFKwu5RNTTrFVje2dfjGO8SXbbWgA3axi3OqlHahFKm0xqMdtzh2ykWSn0FaeqtMyPpBC
 WV8H2qXrDqS8dioXRHUT/VoG5PDGdZC8C0Yv+xJ8T7UoZY/rO+42+ZGmkuFsOQXp3iUIDhNax4H
 3Q+4+WNayk7r9iDsLVWaEyyUQTy0mLr70Ikodkl2BD5IuhX+/MrUbg0l+DCRHyvYZ6ng9KPLTRg
 9/1z4bRvAxkb0enV6fwDvQ5LSWETAlgIlqp/3nYzH6L0r+CFLp6WDiMg4GjZfwFXXZMABMePhbk
 2uUL6hjBGv6K404+yr9dM09ZGh9CWii3g3hyiz5Xc8FJBJd0SFsKFy9SBoaPBdeBYUx0rZ3yXtg
 yZDDc+J3DCecfV/LfCikPR2PRtHBbp6tI5/+ToOWe0z58n0IN1y0w0SCQ9IM4HbWAPut65/gyA1
 IqD/XnlWDL+NNxqdIyw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-04_05,2026-11-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 spamscore=0 suspectscore=0 malwarescore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611040079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_115624_383040_C2E7DBC1 
X-CRM114-Status: GOOD (  23.68  )
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gV2VkLCBOb3YgNCwgMjAyNiBhdCA1OjE34oCvUE0gQnJ5YW4gTydEb25vZ2h1ZQo8YnJ5YW4u
b2Rvbm9naHVlQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gMDQvMTEvMjAyNiAxNjoxMSwgTG9p
YyBQb3VsYWluIHdyb3RlOgo+ID4+PiBXZSBoYXZlIGEgc2VyaWVzIGZyb20gQW50YW5zIHRvIGFk
ZHJlc3MgdGhpcyB0aG91Z2guCj4gPj4+Cj4gPj4+IFdlIHNob3VsZCBsaXN0IHRoZSBjbG9ja3Mg
dGhlIFNvQyBzdXBwb3J0cyBub3QgY29uc3RyYWluIHRoYXQgbGlzdCBmb3IKPiA+Pj4gb25lIHNw
ZWNpZmljIHNlbnNvciBvbiBhIHRlc3QtY2FzZS4KPiA+Pj4KPiA+Pj4gLS0tCj4gPj4+IGJvZAo+
ID4+IEdvb2QgdG8ga25vdyB0aGF0IEFudGFucyBoYXMgYSBzZXJpZXMgYWRkcmVzc2luZyB0aGlz
LiBJIGFncmVlIHRoYXQgd2UKPiA+PiBzaG91bGQgbGlzdCBhbGwgdGhlIGNsb2NrIHJhdGVzIHN1
cHBvcnRlZCBieSB0aGUgU29DIHJhdGhlciB0aGFuCj4gPj4gY29uc3RyYWluaW5nIHRoZW0gZm9y
IGEgc3BlY2lmaWMgc2Vuc29yLgo+ID4+Cj4gPj4gT25lIGFkZGl0aW9uYWwgY29uY2VybjogaWYg
dGhlIGNsb2NrIHNlbGVjdGlvbiBsb2dpYyBzdGlsbCBhbHdheXMgcGlja3MKPiA+PiBmcmVxWzBd
LCBsaXN0aW5nIGEgbG93ZXIgcmF0ZSBmaXJzdCBjb3VsZCBsZWF2ZSBDQU1TUyB1bmFibGUgdG8g
d29yawo+ID4+IHByb3Blcmx5IHdpdGggc2Vuc29ycyB0aGF0IG5lZWQgaGlnaGVyIGJhbmR3aWR0
aC4KPiA+Pgo+ID4+IENvdWxkIHlvdSBwbGVhc2Ugc2hhcmUgdGhlIGxpbmsgdG8gdGhlIHNlcmll
cz8gSSdsbCByZWJhc2UgdGhlIG5leHQKPiA+PiByZXZpc2lvbiBvbiB0b3Agb2YgaXQuCj4gPiBJ
IGRvbid0IHRoaW5rIEF0YW5hcycgc2VyaWVzIHRhcmdldHMgdGhlIENTSUQgY2xvY2tzLCBvbmx5
IHRoZSBWRkUKPiA+IGNsb2Nrcy4gSWRlYWxseSwgd2Ugc2hvdWxkIG1ha2Ugc2ltaWxhciBjaGFu
Z2VzIGZvciB0aGUgQ1NJRCBjbG9ja3MgYXMKPiA+IHdlbGwsIGJ1dCBmb3Igbm93IHRoZXkgYXJl
IG5vdCBiZWluZyBjb25zaWRlcmVkIGhlcmUuCj4gPgo+ID4gUGVyaGFwcyBhZGQgYSBmZXcgY29t
bWVudHMgZG9jdW1lbnRpbmcgdGhlIHN1cHBvcnRlZCByYXRlcyBhbmQgdXNlIGEKPiA+IHNpbmds
ZSByYXRlIGZvciB0aGUgdGltZSBiZWluZy4gT25jZSB0aGUgQ1NJRCBjbG9jayBjaGFuZ2VzIGxh
bmQsIHdlCj4gPiBzaG91bGQgYmUgYWJsZSB0byByZXZpc2l0IGFuZCBhZGFwdCB0aGlzIGFjY29y
ZGluZ2x5Pwo+Cj4gSXRzIHRoZSBzYW1lIHByaW5jaXBsZSB0aG91Z2guCj4KPiBJIGRvbid0IHRo
aW5rIHRoZXJlJ3MgYSB2YWxpZCBjYXNlIHRvIGV4Y2x1ZGUgY2xvY2stcmF0ZXMgcHVyZWx5IGJl
Y2F1c2UKPiBvbmUgc2Vuc29yIHJlcXVpcmVzIHRoZSBoaWdoZXIgcmF0ZSBhbmQgd2UgYXJlbid0
IHdpbGxpbmcgdG8gZG8gdGhlIHdvcmsKPiB0byBtYWtlIHRoZSBjbG9ja3Mgc21hcnRlci4KCk9r
LCBmYWlyIGVub3VnaC4KCk5paGFsLCBmZWVsIGZyZWUgdG8gdGVzdCAmIHBpY2sgdGhlIGZvbGxv
d2luZyBDU0lEIGNsb2NrIHNjYWxpbmcKc3VwcG9ydCBpbiB5b3VyIHNlcmllcywgYW5kIGFkZCBh
bGwgdGhlIHN1cHBvcnRlZCByYXRlczoKaHR0cHM6Ly9naXRodWIuY29tL2xvaWNwb3VsYWluL2xp
bnV4L2NvbW1pdC9hMDJkYWQyM2QyMTlkZTFkYWE1M2U0MDk1ZWI1Mjg5ZTViNWE2YTE1CgpSZWdh
cmRzLApMb2ljCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
