Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA7BC606ADEB
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 10:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=pgLedItx;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=UJNJebC+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=A72yu3WV
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=WVOrlgELRp5FwbcNo5av96nW56Sy1JE958A0LS+8ypQ=; b=pgLedItx+Ysc20mub+HPtK6IyY
	oSCbRJbdGh5gfVNCSPIKGCCKxWVLOytonWeg8593R/EPMeSAt7rWMSxjFsPV+vSEBnWmnhpF33r7V
	VkKWXgBufLu22/Kj9uYakqN80QtXeXjkEbumc0u2XaLwtcol+M53FJ0moj9DF5YZQDC1GqMimsVZA
	D6h+uy2vxAchTqOYUlBtGlXksxU9yLn++sEchdobER38ZchZZ6E/MYYrf5N86fj0Ok4TuYI6JCvnB
	cKvRhp4XaCPu7+gI+cqh9ISn0I7gE2B/VxaMNgJXNtBRFIRohdu3a3vdGnfV/wgMMVtAygXiwTgd2
	jzSKLsDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLen7-00000004MQW-2vEY;
	Tue, 27 Oct 2026 10:52:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLen5-00000004MPV-1Baf
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 10:52:28 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69RAdxPW1061098
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 10:52:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DUhODUYkbj7YwSAO7e9lxcIEVTvWrcgFG4thBV6K17A=; b=UJNJebC+srj8kNh1
	No1muHd6VgXNBoavmCmYSGJigq5SqZbxbO487zcMDIle3IUBr8V+h/q3jIB9I80n
	J9lEkQmeWpt2L6SXdLxohQ97LwLQvO5StpUyHru4Q+VPueJYhVQjHlg8rVbbH9jO
	GsCjDQ9DsX0lpQtdpVwsxJp1YL13gZwNqo8hRWCRSKvLgnOEw6lETvdwG9J+rUev
	kePlRNXX34Ekn9j2NgHeYxdpWklZBId0r6lzQf8PF8W9CuXDy0BfPdRSVFIBDTWa
	Wy72flRiJrCQ0g6QJLD8C/iQMquK/0DbOiQvmNGmsgW2yZ8LDse/4JW95CF8tyd5
	2OBVqg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hjp2t94nc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 10:52:26 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5363763b556so15393001cf.3
        for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 03:52:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793098345; cv=none;
        d=google.com; s=arc-20260327;
        b=Xect+BSgWcRKsANVUfva+OqO3shl+azxpGOhmgzkLDsVm6D0RqOF7Q+hJuUGML6O5j
         umAY5VawtYGsA0Q+/xnubSqOZlZMbjub9bM3MXA+02V3RnZ2NWMgnVItWMmhkEIixZj3
         LhH8VtLc5A7lxL1QFNw8Lk0dv7jIZBHRgumvZB4+sq7yjxmsc9zgv/AoEsynvYikGLp/
         Dt0uQsPE2eP75/edoPb0nwtRMg+mmbY92vefcaY1SvKo8iZhiQCkY57TOwOGM2Zy153m
         /wg4+noToKxbUxA6rEFgrOSfNAeX2YPXz43v9FBOPdNvEuJwbQoM1lTV1Tb4Wk8i5EeY
         MzFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=DUhODUYkbj7YwSAO7e9lxcIEVTvWrcgFG4thBV6K17A=;
        fh=nfWiviwsmeTwWslaDrj2MjiNaJvk39uWAAsME3Lfouo=;
        b=Yqyaw2mi9MIxedeShKENhzsGHAhAz5c1hsRKbnKhy9yiMopGlNLMKSBda6QmgyKfoc
         OPYvJRobVo7NqJ/BgIPcOvkmmB0hfKEmkG5kEkfvF+2YFb7YkGm6i7luqJAGURbzP4fU
         5Yr50lC4HFN8yQPQq81wVAyqK4IYL14OImh9ZJG+cTPxxeew4M/UJgyctzOzmoitNYnD
         FJ9iq8Pog01cSDtZwig8oXbci9bcJl+px8vM3aQT2dPThnbKhRLsoLaa5J4WMcgAQyQo
         fkdibnqtYBNcc7RpBkR78iBGULhGJ/sC1FPFy4gEFIh7yIqmmMYL6D+7MxdebXOXR7kk
         /hAw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793098345; x=1793703145; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=DUhODUYkbj7YwSAO7e9lxcIEVTvWrcgFG4thBV6K17A=;
        b=A72yu3WVCflerepTScSt/fHHuD0b9mIT0kKk6cVpKIfCYzZ2y4J+tdAEgdwJYjz6v9
         2PsCo8s1kBhLAXSaAdHQZlropvY1JNpFivkl+P22zpqfThEqHjialG5QfsYfryK69B6F
         V3RuDJN6X8qcWATuCvI9EAmZBk3zIZWTTY4/K9QUrfLBSOam3pucZW0MAsYSujddMOyQ
         qfeISMoFY4OcGhRw0TUO2BcHSvRAwO4pBDE3E7XozmUNn/v2bUZjyor3Fv8LY8Pwu13A
         guLU/H53GA/DmDSlE0aFK2EhtR86/chQxi8Cr6V8ri1fU9LhlSJ6Y+jkicSUGMLKrw78
         2vrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793098345; x=1793703145;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DUhODUYkbj7YwSAO7e9lxcIEVTvWrcgFG4thBV6K17A=;
        b=y2RBwT+NkoMxXwmRRvo1E0vDATEupWi9JGR1uzXJwkGXsChUImNxWEEuFgOiWn6vKh
         otVK0OOQsNApMC9YLyjEr6Q0s7WqiYBHi19Zd7keT5oYqk2vpmTFLvoOZys98Dvqi4s0
         SvM6hbVNPuZiyquvSofwo20HSC0hCONnoPHQzvmfv/1szin6V3GdBE0VJQlLJtefh2Th
         ec4FMrQKx3QxF/HBt4MBQzWbREHnVAaglnI+Bnkhdue/vcRMRz+l1e32SEieBrvHewya
         66rYT7fCPmaSX30hgpHkWKvlIiHj1FiFcARwdxtHZ1m5iN9HzCLG6JUhbJV5cwqxLZuG
         20gA==
X-Forwarded-Encrypted: i=1; AKwUvBzbQafUSVouumLA7bwY/Kl82MSul4wtCELh966dVc72LUWQtY++KLBzXvTliDkuJ60vXFyrUWRDQo8=@lists.infradead.org
X-Gm-Message-State: AFq9FYIbmpFf7hXa+EIWR5HMMtajyhTJZv7HXEHU6FzQL4FdhandFlKo
	qdGdoZ2p+1OyqrSjQ+OZAS4lkZ5xTPbsG9jVqPzsZJ6PDonju8csH9aQ6rxzBgpvxKLzTS44l65
	/9L5V37ZnuIGZ7PPAFlKQ8BQRDQyiBIXjLHNJ9GhrjPpdmQjSwVDkSP+5P428+AHxVaavQ899iY
	6rXA0nnCYKxtIuyBk2qHxWGrFMIoWu7fMoSTEGZIXboa8=
X-Gm-Gg: AYBFou3yULZgBi8ul98RnR/kn/gHAyqKwW8wSrJxihUOGkdOH1lkOJquXrajEvCU92C
	bIpBOvjUi3r+SHJhTin3YHUhajsYEsWbeDGcdaQxRWRAIKuDfkvapPeaV3DehPPhEYtjt+S9qBb
	vnpaH8DEtvefhDvq8nGfvuZDMFVRJEUdOPcVX11cGNo9fzEmDOeBPSgNhprBFxQyzR2eOM1qeSb
	b0ABqMHWucQThMRuYhum6rSIJxa6SSHMeV9QTdu/PMfGON+2jlkNkiRyWX1y4D+zyclZZo3kt4Y
	SpnT93++0L+DAAH4wWjsD9Qsgflv
X-Received: by 2002:a05:620a:3704:b0:93f:3193:ac02 with SMTP id af79cd13be357-940ef980186mr1471687585a.51.1793098345384;
        Tue, 27 Oct 2026 03:52:25 -0700 (PDT)
X-Received: by 2002:a05:620a:3704:b0:93f:3193:ac02 with SMTP id
 af79cd13be357-940ef980186mr1471684685a.51.1793098344925; Tue, 27 Oct 2026
 03:52:24 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261026224957.1115370-1-vz@kernel.org> <20261026224957.1115370-4-vz@kernel.org>
In-Reply-To: <20261026224957.1115370-4-vz@kernel.org>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Tue, 27 Oct 2026 11:52:13 +0100
X-Gm-Features: AclHuK_W73gHmnyhBWT18CczdSRYkFSq34tLIfhksbP66i2-mLn75HpT6SxBCv4
Message-ID: <CAFEp6-16WAoyS+aY2BzPknsMtHa1cSfVYNmYvTKHm_MWqqW_ag@mail.gmail.com>
Subject: Re: [PATCH v2 3/7] media: qcom: camss: Allow CSI2 PHY devices without
 CSIPHY resources
To: Vladimir Zapolskiy <vz@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, "Bryan O'Donoghue" <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        linux-media@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
X-Authority-Analysis: v=2.4 cv=AJjzCM5L c=1 sm=1 tr=0 ts=6ae0826a cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=YMgV9FUhrdKAYTUUvYB2:22 a=VwQbUJbxAAAA:8 a=seWYDaW_jbbixs5KtssA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: aLCmsSOxQxjCdofS4kUDU1YpY9DbV9O3
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI3MDA0MyBTYWx0ZWRfX9GVuDwYsN1Ws
 K4ptpo/kFkZ2L6uqy8jHqHUKoeVrb54MC48Z98LdHII+pnmf+2va5+Yc2Z6pWJB29lCkY1zj1b6
 +IhOv8j3APilJBNzb2LakhvpSR5BGoc=
X-Proofpoint-ORIG-GUID: aLCmsSOxQxjCdofS4kUDU1YpY9DbV9O3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI3MDA0MyBTYWx0ZWRfX3wKyns1UR+lP
 tha9kNwCIy5v4RxK0ER+UMifjpjbJLKal2H1Q7MJ6D3g3Q0+iNv7xn1aChdkXFtJn6ICDW936tb
 8QD8ugkOafz/qlDFMWs8S6gjQ4DIMFvGVg+xvTgVeQV3o4331W0IlwnX2YVEHKFtAaUqDeZHva7
 YBxJ/YQvShoRkXL1UKxkVo/AzR6OF9r4uNvKv0TGO55nYShZaUXqhI7Ga3NGPLjG8JpClwR7woa
 qW2phBlBKA3plpL5HMqU6vWLKt2be91JPgjOZX8FTKEPQSOAxE34ojUhjvtdfsalBFsBlL40tO/
 C/e1dI4gXHekZt4IN0TFM6LJClKaGLd9rxEoTSOAeKrKU9srNkBiuSJP/ZDySf2zZ3js9uins01
 qWNvfiUf5v15HBVpjMyhdUhTSP239kyL26G4R9YGkiNcHxMPjkFAQRpxOQsMPs5r2M/1zXK/mh0
 A/+DvG9ZYUcwF2wOdiw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-27_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 malwarescore=0 spamscore=0
 clxscore=1015 priorityscore=1501 adultscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610270043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_035227_332677_DA64783B 
X-CRM114-Status: GOOD (  23.91  )
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
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgVmxhZCwKCk9uIE1vbiwgT2N0IDI2LCAyMDI2IGF0IDExOjUw4oCvUE0gVmxhZGltaXIgWmFw
b2xza2l5IDx2ekBrZXJuZWwub3JnPiB3cm90ZToKPgo+IElmIENBTVNTIENTSVBIWXMgYXJlIHN1
cHBvcnRlZCBieSB0aGUgc3RhbmQtYWxvbmUgQ1NJMiBQSFkgZHJpdmVyIG9ubHksCj4gdGhlcmUg
aXMgbm8gbmVlZCB0byBwcm92aWRlIGRlc2NyaXB0aW9uIG9mIGxlZ2FjeSBDU0lQSFkgcmVzb3Vy
Y2VzIGluCj4gdGhlIENBTVNTIGRyaXZlciwgdGhlcmVmb3JlIGlmIENTSVBIWSByZXNvdXJjZXMg
YXJlIG5vdCBnaXZlbiBmb3Igc29tZQo+IHN1cHBvcnRlZCBwbGF0Zm9ybSwgdXNlIENBTVNTIENT
SVBIWSBwb3J0IG51bWJlcnMgYXMgQ1NJUEhZIGlkZW50aWZpZXJzLgo+Cj4gU2lnbmVkLW9mZi1i
eTogVmxhZGltaXIgWmFwb2xza2l5IDx2ekBrZXJuZWwub3JnPgo+IC0tLQo+ICBkcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpcGh5LmMgfCAxNiArKysrKysrKysrKysr
LS0tCj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jICAgICAgICB8
ICA4ICsrKysrKy0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgNSBkZWxl
dGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ft
c3MvY2Ftc3MtY3NpcGh5LmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ft
c3MtY3NpcGh5LmMKPiBpbmRleCBmOTllZWEyZWYyMjguLjhlY2Q1MTQ0NTFkMiAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpcGh5LmMKPiAr
KysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpcGh5LmMKPiBA
QCAtNzk5LDYgKzc5OSwxMSBAQCBpbnQgbXNtX2NzaXBoeV9zdWJkZXZfaW5pdF9sZWdhY3koc3Ry
dWN0IGNhbXNzICpjYW1zcywKPiAgICAgICAgIHJldHVybiByZXQ7Cj4gIH0KPgo+ICsvKiBGYWxs
YmFjayB0byBnZW5lcmljIFNETTg0NSBjb21wYXRpYmxlIGZvcm1hdHMgZm9yIG5vbi1sZWdhY3kg
Q1NJUEhZcyAqLwo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGNzaXBoeV9zdWJkZXZfcmVzb3VyY2Vz
IGNzaXBoeV9yZXNfcGh5ID0gewo+ICsgICAgICAgLmZvcm1hdHMgPSAmY3NpcGh5X2Zvcm1hdHNf
c2RtODQ1LAo+ICt9Owo+ICsKPiAgLyoKPiAgICogbXNtX2NzaXBoeV9zdWJkZXZfaW5pdCAtIElu
aXRpYWxpemUgQ1NJUEhZIGRldmljZSBzdHJ1Y3R1cmUgYW5kIHJlc291cmNlcwo+ICAgKiBAY2Ft
c3M6IENBTVNTIHN0cnVjdHVyZQo+IEBAIC04MDgsNyArODEzLDcgQEAgaW50IG1zbV9jc2lwaHlf
c3ViZGV2X2luaXRfbGVnYWN5KHN0cnVjdCBjYW1zcyAqY2Ftc3MsCj4gICAqLwo+ICBpbnQgbXNt
X2NzaXBoeV9zdWJkZXZfaW5pdChzdHJ1Y3QgY2Ftc3MgKmNhbXNzLCB1OCBwb3J0KQo+ICB7Cj4g
LSAgICAgICBjb25zdCBzdHJ1Y3QgY2Ftc3Nfc3ViZGV2X3Jlc291cmNlcyAqcmVzID0gJmNhbXNz
LT5yZXMtPmNzaXBoeV9yZXNbcG9ydF07Cj4gKyAgICAgICBjb25zdCBzdHJ1Y3QgY2Ftc3Nfc3Vi
ZGV2X3Jlc291cmNlcyAqcmVzID0gY2Ftc3MtPnJlcy0+Y3NpcGh5X3JlczsKPiAgICAgICAgIHN0
cnVjdCBjc2lwaHlfZGV2aWNlICpjc2lwaHkgPSAmY2Ftc3MtPmNzaXBoeVtwb3J0XTsKPiAgICAg
ICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9IGNhbXNzLT5kZXY7Cj4gICAgICAgICBzdHJ1Y3QgZGV2
aWNlX25vZGUgKmVwLCAqcmVtb3RlOwo+IEBAIC04MzYsOCArODQxLDEzIEBAIGludCBtc21fY3Np
cGh5X3N1YmRldl9pbml0KHN0cnVjdCBjYW1zcyAqY2Ftc3MsIHU4IHBvcnQpCj4gICAgICAgICB9
Cj4KPiAgICAgICAgIGNzaXBoeS0+Y2Ftc3MgPSBjYW1zczsKPiAtICAgICAgIGNzaXBoeS0+aWQg
PSByZXMtPmNzaXBoeS5pZDsKPiAtICAgICAgIGNzaXBoeS0+cmVzID0gJnJlcy0+Y3NpcGh5Owo+
ICsgICAgICAgaWYgKHJlcykgewo+ICsgICAgICAgICAgICAgICBjc2lwaHktPmlkID0gcmVzW3Bv
cnRdLmNzaXBoeS5pZDsKPiArICAgICAgICAgICAgICAgY3NpcGh5LT5yZXMgPSAmcmVzW3BvcnRd
LmNzaXBoeTsKClNvLCBjYW4ndCB3ZSBzaW1wbHkgZHJvcCB0aGUgYWJvdmUgYXNzaWdubWVudCBh
bmQga2VlcCBvbmx5IHRoZQpwb3J0L2NzaXBoeV9yZXNfcGh5IGJlbG93PyBUaGF0IHdvdWxkIHBy
b3ZpZGUgdGhlIHNhbWUgYmVoYXZpb3IgZm9yCmFsbCBub24tbGVnYWN5IFBIWSBpbml0aWFsaXph
dGlvbnMsIHJlZ2FyZGxlc3Mgb2Ygd2hldGhlciBsZWdhY3kKQ1NJUEhZIHJlc291cmNlcyBhcmUg
ZGVzY3JpYmVkIG9yIG5vdC4KCj4gKyAgICAgICB9IGVsc2Ugewo+ICsgICAgICAgICAgICAgICBj
c2lwaHktPmlkID0gcG9ydDsKPiArICAgICAgICAgICAgICAgY3NpcGh5LT5yZXMgPSAmY3NpcGh5
X3Jlc19waHk7Cj4gKyAgICAgICB9Cj4KPiAgICAgICAgIHNucHJpbnRmKGNzaXBoeS0+bmFtZSwg
QVJSQVlfU0laRShjc2lwaHktPm5hbWUpLCAiY3NpJWQiLCBjc2lwaHktPmlkKTsKPgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MuYyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jCj4gaW5kZXggYzU0MTg1YzkzYThh
Li5iMGQ2MGU3MGU0YmIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29t
L2NhbXNzL2NhbXNzLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3Mv
Y2Ftc3MuYwo+IEBAIC00Nzk2LDcgKzQ3OTYsMTAgQEAgc3RhdGljIHZvaWQgY2Ftc3NfZGV0ZWN0
X2xlZ2FjeV9waHkoc3RydWN0IGNhbXNzICpjYW1zcykKPiAgICAgICAgIHN0cnVjdCBkZXZpY2Vf
bm9kZSAqcmVtb3RlOwo+ICAgICAgICAgc3RydWN0IGRldmljZV9ub2RlICplcDsKPgo+IC0gICAg
ICAgY2Ftc3MtPmxlZ2FjeV9waHkgPSB0cnVlOwo+ICsgICAgICAgLyogTGVnYWN5IENTSVBIWSBk
ZXNjcmlwdGlvbiBpbXBsaWVzIHRoZSBwcm92aWRlZCBDU0lQSFkgcmVzb3VyY2VzICovCj4gKyAg
ICAgICBjYW1zcy0+bGVnYWN5X3BoeSA9ICEhY2Ftc3MtPnJlcy0+Y3NpcGh5X3JlczsKPiArICAg
ICAgIGlmICghY2Ftc3MtPmxlZ2FjeV9waHkpCj4gKyAgICAgICAgICAgICAgIGdvdG8gZG9uZTsK
Pgo+ICAgICAgICAgLyogRmluZCBmaXJzdCByZW1vdGUtZW5kcG9pbnQgYW5kIGRldGVybWluZSBp
ZiBpdHMgYSBQSFkgKi8KPiAgICAgICAgIGZvcl9lYWNoX2VuZHBvaW50X29mX25vZGUoY2Ftc3Mt
PmRldi0+b2Zfbm9kZSwgZXApIHsKPiBAQCAtNDgxMCw2ICs0ODEzLDcgQEAgc3RhdGljIHZvaWQg
Y2Ftc3NfZGV0ZWN0X2xlZ2FjeV9waHkoc3RydWN0IGNhbXNzICpjYW1zcykKPiAgICAgICAgICAg
ICAgICAgYnJlYWs7Cj4gICAgICAgICB9Cj4KPiArZG9uZToKPiAgICAgICAgIGRldl9kYmcoY2Ft
c3MtPmRldiwgImxlZ2FjeSBwaHkgbW9kZSAlc1xuIiwKPiAgICAgICAgICAgICAgICAgY2Ftc3Mt
PmxlZ2FjeV9waHkgPyAidHJ1ZSIgOiAiZmFsc2UiKTsKPiAgfQo+IEBAIC00ODQxLDcgKzQ4NDUs
NyBAQCBzdGF0aWMgaW50IGNhbXNzX2luaXRfc3ViZGV2aWNlcyhzdHJ1Y3QgY2Ftc3MgKmNhbXNz
KQo+Cj4gICAgICAgICAgICAgICAgIGlmIChyZXQgPCAwKSB7Cj4gICAgICAgICAgICAgICAgICAg
ICAgICAgZGV2X2VycihjYW1zcy0+ZGV2LCAiY3NpcGh5ICVkIGluaXQgZmFpbFxuIiwKPiAtICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlcy0+Y3NpcGh5X3Jlc1tpXS5jc2lwaHkuaWQp
Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVzLT5jc2lwaHlfcmVzID8gcmVz
LT5jc2lwaHlfcmVzW2ldLmNzaXBoeS5pZCA6IGkpOwo+ICAgICAgICAgICAgICAgICAgICAgICAg
IHJldHVybiByZXQ7Cj4gICAgICAgICAgICAgICAgIH0KPiAgICAgICAgIH0KPiAtLQo+IDIuNTEu
MAo+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
