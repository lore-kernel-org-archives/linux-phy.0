Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9F6606A331
	for <linux-phy@archiver.kernel.org>; Wed, 21 Oct 2026 07:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AoMn1BTW;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=ecVcew5d;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=gNBpHJnW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MtmB9PHjIfK1HF4ln8DGKEZFFlFTbeyyuUonO7hC/Iw=; b=AoMn1BTWTduSBt
	lqosVwHu3ceoOiJXQUlwMWjXREjGozrre0iC9ZR+DJMdg98Aj+Y38Uv/tEONMr9lbpwWEvs3ojRcO
	7MoqKwuEbcx4BmfbXlspIsFLOqMjacUJiC4gjH8pr0r9tdxHDKaCEF6o+sGIxJjK/onbyw6uAebBT
	k2a58pBwZi0ZsssANW6RQVkhsA3RSGQe4LPOzHKvgNZp1dg/OWNQ9B35EjTOgPw1NNSgayCnNwfkX
	nV1UP0D47SnvmnuIW8InfFx9HhOgKEl1B0x8GpWeYcueBxK1NGOPABZLb3mHzlHgW0xYUuQSwBP+c
	GbGm9lYjBaP1TGhY5epA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJRBr-0000000BHe9-3nPH;
	Wed, 21 Oct 2026 07:56:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJRBo-0000000BHdn-12xT
	for linux-phy@lists.infradead.org;
	Wed, 21 Oct 2026 07:56:50 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69L5j4C93926689
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 07:56:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oIWWxOwnRpq6QbCd8IrW8JOBm2tuiGSDBQ2+EhIn+aY=; b=ecVcew5dxNN4k/2h
	0RYmgVIYj9XR9ah50jv/VbBldcVVw6zbs/CXd/yG3XcGS6W4b7bB+jU3hw2n3Qv6
	3TQtOw6bJ1aZpflwraMX5ssKqb7s0LDOGyA8OQngx4RF7BV1ajmbnlumILuWKT6J
	FfGE6X98vL3noPVId+y+Pm7ODYSl23baYC8sChE8YDbh0PV1fNqQLzIJKCCVg9+e
	mF1thX/NT34kBc0UHCo1vl4lRu2NfZrBMikrimQIlhu5S+IKzJy7hWyLmvO+c+Q6
	f2L+EPdPRsESNwVnfwO3Gkl+4zqUJxj/Xa3QvIZFI3M2G/Z6QQTQxSH7y1OITNda
	MQVFDw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4he7h2c88y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 07:56:47 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93f2373e9b4so51396485a.1
        for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 00:56:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792569407; cv=none;
        d=google.com; s=arc-20260327;
        b=Jy6QJf7rEwQ3BhR/t0BXkDsiIZCtLjHrjSdIR7HiXO6h7TCa47D/WLL8Ogs44G7g6q
         cXdxMdHNML+6WcsLdJpRSsSGiOlSEJ7qAhHPJibcAnnSlvP8aUQdWETT3yHgyJfExrry
         WvEa6Vq/mLmCWUw6TQ2vdVaLKNFLgPz9jDDKrYGrEpxnyxokyFJi4QPStUVsRy9PyExc
         XSd+JcLas2+Hm6V3CDnCUQLD6IH60kG+fx3ZTVa1F6f+N3Fd7oFuwlNjy28XqlbIas3Z
         RxAeOCMtTdtVnVbgtdPT0MJ6L3YPu6IRFascfCOw1Fe4okdge6HaHbs6QF9lYHWSny1I
         32gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=oIWWxOwnRpq6QbCd8IrW8JOBm2tuiGSDBQ2+EhIn+aY=;
        fh=C++PQwWl/rEMTHYXyKMlBxqpUJk7fbmINFPJPy9gwMs=;
        b=MufzGDAm5hKz24VcKsT51Ns+07gCwNZGF3M50DQ4FDWaDRcWsOpDkmPEKkmC05B7m2
         01plJrxorLhDbEHsvBZyGifMTjVxMwE8auiNmyNpLGQA3CklphJabrcLzwhYJBPCOkEs
         eCQrnvMnB5dpKfUxwiOEtq4FIw1GN1p1bZ0OrOPatFMHdDKvmryx5BR9iQ9JYTQniQxh
         5m5gM+EYRuP4/qjEVg2d7ucQSKqv1yWsWvz1Oz5ZiEwk2xIM1b9qc/4xqJLOcPdCeAs5
         qjeZszzDZzXdQt+/D/QUATPON7XuqRFZFkWf88uC88h2yJjzif81GiXPFxhE3CPHzaGm
         F74w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792569407; x=1793174207; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=oIWWxOwnRpq6QbCd8IrW8JOBm2tuiGSDBQ2+EhIn+aY=;
        b=gNBpHJnWR71FoffiCFcITbQguwUHBbDL68i9Z++0SCqI6/ixUzrieyCRIbP1SrVoL3
         aVEyBRjnEebwEuU3sig4FQHdrcQ9IO6I9QxTV1YkDEB0VzAjSeyDo6vKXbezLIxzEVkp
         tvZXelavvrjRK9ZldCOJrD0w2nMBA/HgTKlgfqPZYLSUUPhBCQ4+qT+G+tTscvBpCFbe
         qwujcP3FvB+KY50xoZjjmg4FaYYfEqXCI+hS2irOakL11W9lE0/0aiBqCFXNVd67gDPt
         GEbrt+HikVfV2mVwtk86GyRTIZ4nUDWpWuMG/EbEDtteSZNNNsEmSYVwRKZHieYyhYgy
         IV+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792569407; x=1793174207;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oIWWxOwnRpq6QbCd8IrW8JOBm2tuiGSDBQ2+EhIn+aY=;
        b=Cq/DW6khYoRFhwkmGNa1bV7mwzQH3bjv69kR+weC2g1xES4bp4uxWaonkYxTgAWCC1
         zMSwQ0Ri52QoKuvsz7wuShi1w9GEpPGS6IrQwgaG+ihQ+yTPLqZpgISPUDgHopOVId8B
         ybWiLn6w0aXBRjGE7O+5VJHVeP7uEasEDz7eycvgJlNDLE0c7jvKSi7sp90ze7qUWpEb
         WJx2txnfhgfErsb2ve3RF5LfAplNDuPM8jXgX3e9b3rYwx82hkmRhEkdZcwZxLcy2+Yf
         COhKfpTe4vJ8f22Svf3BDxNSDQgiIzR/p4UhkzKWaUPBQPI58FJe9diQ2MkdZaAvpSJt
         4eew==
X-Forwarded-Encrypted: i=1; AKwUvBz3PLuI5cbGdGVWoAlVnIombEsqQKs/guk8ZSL+xzc9wkWuAswCNGQcFrL4pyzASkwx6Gv2uK4M1nQ=@lists.infradead.org
X-Gm-Message-State: AFq9FYK963PoTZmyRvOY1KXpDciKFYJGNzws5Uvc5f5A5i1jGtF5Nse8
	qXwhz6lRIHbM8DO68iWQ9iP2aif2MD5v5oZm97WxUCbtaMZfyHWg6sfAs274MDuhJ22ZPsxmYwB
	xIgo25nwmwMVn98SlNU+zbolCpNMctaN0382JSAnNhVtu42RbaJ/DJ4CBJVv4nPT7VGeun3m/Ud
	mTqz/vrU1IEc2aCI8OUPjU1feXXVkWJKmlPx/3LFP5bdw=
X-Gm-Gg: AYBFou3lPdy1BORIFIrOmayS/HIFS6w/gS/xYvFcgHR8KFLZhTox6gcw+y3aUVlncLF
	8RrCwDoVyQz6kcFwBVrgiqryrDeJeAhovCi6E1OUCnr/pez5UbLSFlPNsl/f+xAhh/yrAFanht+
	XsKsFRFkR4n1F3FbJV5mOIRqK8EfqfwPP9s1Mhp8qxtL/WzxLa3gEqF5yY4rqYfTXfhe35xPQzU
	kMEKb777H1YaPhkAOq99qHMt/bVWOmz3G3qLMvSGdACF+K5KR/aX2Mw2iC8ARtV/nmHAJUIkeE=
X-Received: by 2002:a05:620a:2b91:b0:93e:4f4c:b380 with SMTP id af79cd13be357-93f57ebccf4mr265203085a.10.1792569406222;
        Wed, 21 Oct 2026 00:56:46 -0700 (PDT)
X-Received: by 2002:a05:620a:2b91:b0:93e:4f4c:b380 with SMTP id
 af79cd13be357-93f57ebccf4mr265200885a.10.1792569405691; Wed, 21 Oct 2026
 00:56:45 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com> <20261011-kaanapali-camss-v21-4-04fd28d815c6@oss.qualcomm.com>
In-Reply-To: <20261011-kaanapali-camss-v21-4-04fd28d815c6@oss.qualcomm.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Wed, 21 Oct 2026 09:56:32 +0200
X-Gm-Features: AclHuK98k2MczxGrkHeLuzC-J1vF9mCnI0valuaGqqaz9pJgB0ntPucnOeSha1c
Message-ID: <CAFEp6-2d_hpbJnxR4uAzWhkk+h2d6ffkbBWyATKGrJi2E_z7KA@mail.gmail.com>
Subject: Re: [PATCH v21 04/14] media: qcom: camss: Issue stream-on REG_UPDATE
 from CSID
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: "Bryan O'Donoghue" <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
X-Proofpoint-GUID: yCaGh9EIkloi2V6yGhm_EBpLGbO5Tirg
X-Proofpoint-ORIG-GUID: yCaGh9EIkloi2V6yGhm_EBpLGbO5Tirg
X-Authority-Analysis: v=2.4 cv=EuJHPicA c=1 sm=1 tr=0 ts=6ad8703f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8 a=0Hab3u7fAHnAQfOSGZgA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIxMDAzMSBTYWx0ZWRfXwlXCAn4bf5rL
 FNTKGOAxYNn8gBK3G/KfkCm7cnN5NFCttvweetTRU0x6Xu2uYfb12ZIDe1W/sDWhf1UrPRLqPgf
 TyRnDHAL0/TQHE7XPFMhzQ2qI2fC3kg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIxMDAzMSBTYWx0ZWRfX2QGpUBS/4QZj
 qWT1UwP5gdKY+HStWL7/WBtGNH5IfRfpz+jDvKEK5C6jp3jmLp95ULMZHPc2E5s2EigLvH1Ve49
 1Otwmz0Lvk8p+ef5LIPxNfb8QZiuXoDklpwWXYgYk3RGnR8V9HHNCb6X5y2ZRr+5U8P5e3g5svA
 AjSGN1G4HX4GQqDszhSFDSO73tn2/IJY9F1g0fQLQtsukJI7JuHFUe9mwVnc3/D2McTXT9omAzj
 cJPQTcly8ngOVAw3wfJwDUkAfvMJVmVu6As2/8+Iu51Osvjx8IV2WmPZDOzRhOBgsRsCUthwp5p
 Uu186Bcmj6dDN7j11JvMVs+JwtbPgtR4hNu7OXPmn/8DOxEiWRuYdQO3Mlfu3QmYMet6G38Yc+a
 914q6FtPwpfuwrJVJlvYkRqQPFT9+OL3cmGDeQU3ifUOPR1vzjycf9/4FvmLGPf4PIuj7Fs2eOL
 m+qvoKFKpQQFteHtNLg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-21_02,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 clxscore=1015 spamscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610210031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_005648_293359_8CCA41C1 
X-CRM114-Status: GOOD (  28.79  )
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

T24gTW9uLCBPY3QgMTIsIDIwMjYgYXQgODo0NeKAr0FNIEhhbmd4aWFuZyBNYQo8aGFuZ3hpYW5n
Lm1hQG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOgo+Cj4gT24gc3RyZWFtLW9uLCBDQU1TUyBzdGFy
dHMgdGhlIHN1YmRldmljZXMgdXBzdHJlYW0gZnJvbSB0aGUgdmlkZW8gbm9kZQo+IHRocm91Z2gg
dGhlaXIgc2luayBwYWRzLCBzbyB0aGUgVkZFIGlzIHN0YXJ0ZWQgYmVmb3JlIHRoZSBDU0lELgo+
Cj4gU3RhcnRpbmcgd2l0aCBDU0lEIDY4MCwgdGhlIFJFR19VUERBVEUgaXMgaXNzdWVkIHRocm91
Z2ggdGhlIENTSUQKPiByYXRoZXIgdGhhbiB0aGUgVkZFLiBIb3dldmVyLCB2ZmVfZW5hYmxlX291
dHB1dF92MigpIHN0aWxsIGlzc3VlcyBhCj4gUkVHX1VQREFURSBhZnRlciBxdWV1ZWluZyBlYWNo
IGluaXRpYWwgYnVmZmVyLCBiZWZvcmUgdGhlIENTSUQgaGFzCj4gY29uZmlndXJlZCB0aGUgc3Ry
ZWFtLiBUaGUgVkZFIHRoZW4gbmV2ZXIgc2lnbmFscyBCVUZfRE9ORS4gVGhlcmVmb3JlLAo+IHRo
ZSBDQU1TUyBub3cgaXNzdWVzIHRoZSBSRUdfVVBEQVRFIGZyb20gY29uZmlndXJlX3N0cmVhbSgp
IG9uIENTSUQgNjgwCj4gYW5kIENTSUQgR2VuMyBpbnN0ZWFkLiBUaGUgb3BlcmF0aW9uIGhhcHBl
bnMgYWZ0ZXIgdGhlIFJYIGNvbmZpZ3VyYXRpb24KPiBhbmQgYmVmb3JlIHRoZSBSREkgcGF0aCBp
cyBlbmFibGVkLgo+Cj4gU2tpcCB0aGUgVkZFLXNpZGUgc3RyZWFtLW9uIFJFR19VUERBVEUgb25s
eSB3aGVuIHRoZSBDU0lEIGNvbm5lY3RlZCB0bwo+IHRoZSBWRkUgc2luayBwYWQgaW1wbGVtZW50
cyB0aGUgcmVnX3VwZGF0ZSBjYWxsYmFjay4gUGxhdGZvcm1zIHdob3NlCj4gQ1NJRCBkb2VzIG5v
dCBwcm92aWRlIHRoaXMgY2FsbGJhY2ssIGFzIHdlbGwgYXMgbGluZXMgZmVkIGJ5IElTUElGLAo+
IGtlZXAgdGhlIGV4aXN0aW5nIFZGRS1zaWRlIFJFR19VUERBVEUuCgpTbyB3aHkgbm90IHNpbXBs
eSBtYWtlIHJlZ191cGRhdGUgb3B0aW9uYWwgYW5kIGVpdGhlciBub3QgaW1wbGVtZW50IGl0Cm9y
IG51bGxpZnkgaXQgZm9yIHRoZSByZWxhdGVkIFZGRXM/IFRoYXQgc2VlbXMgbXVjaCBjbGVhbmVy
IHRvIG1lLgpJZiB0aGUgVkZFIGltcGxlbWVudHMgdGhlIGNhbGxiYWNrLCB3ZSBpbnZva2UgaXQu
IElmIGl0IGRvZXNuJ3QsIHdlCnNpbXBseSBza2lwIGl0LgoKCj4KPiBTaWduZWQtb2ZmLWJ5OiBI
YW5neGlhbmcgTWEgPGhhbmd4aWFuZy5tYUBvc3MucXVhbGNvbW0uY29tPgo+IC0tLQo+ICBkcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC02ODAuYyB8ICAzICsrCj4g
IC4uLi9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLWNzaWQtZ2VuMy5jICAgIHwgIDMg
KysKPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLXZmZS5jICAgICAg
fCAzNyArKysrKysrKysrKysrKysrKysrKystCj4gIDMgZmlsZXMgY2hhbmdlZCwgNDIgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lkLTY4MC5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9xY29tL2NhbXNzL2NhbXNzLWNzaWQtNjgwLmMKPiBpbmRleCAzNDVhNjdjOGZiOTQuLjU1NmNk
ZmVmNjIwNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3Mv
Y2Ftc3MtY3NpZC02ODAuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1z
cy9jYW1zcy1jc2lkLTY4MC5jCj4gQEAgLTI5Niw2ICsyOTYsOCBAQCBzdGF0aWMgdm9pZCBfX2Nz
aWRfY29uZmlndXJlX3JkaV9zdHJlYW0oc3RydWN0IGNzaWRfZGV2aWNlICpjc2lkLCB1OCBlbmFi
bGUsIHU4Cj4gICAgICAgICB3cml0ZWwodmFsLCBjc2lkLT5iYXNlICsgQ1NJRF9SRElfQ0ZHMChw
b3J0KSk7Cj4gIH0KPgo+ICtzdGF0aWMgdm9pZCBjc2lkX3N1YmRldl9yZWdfdXBkYXRlKHN0cnVj
dCBjc2lkX2RldmljZSAqY3NpZCwgaW50IHBvcnRfaWQsIGJvb2wgaXNfY2xlYXIpOwo+ICsKPiAg
c3RhdGljIHZvaWQgY3NpZF9jb25maWd1cmVfc3RyZWFtKHN0cnVjdCBjc2lkX2RldmljZSAqY3Np
ZCwgdTggZW5hYmxlKQo+ICB7Cj4gICAgICAgICBpbnQgaTsKPiBAQCAtMzA3LDYgKzMwOSw3IEBA
IHN0YXRpYyB2b2lkIGNzaWRfY29uZmlndXJlX3N0cmVhbShzdHJ1Y3QgY3NpZF9kZXZpY2UgKmNz
aWQsIHU4IGVuYWJsZSkKPiAgICAgICAgICAgICAgICAgaWYgKGNzaWQtPnBoeS5lbl92YyAmIEJJ
VChpKSkgewo+ICAgICAgICAgICAgICAgICAgICAgICAgIF9fY3NpZF9jb25maWd1cmVfcmRpX3N0
cmVhbShjc2lkLCBlbmFibGUsIGksIDApOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIF9fY3Np
ZF9jb25maWd1cmVfcngoY3NpZCwgJmNzaWQtPnBoeSwgMCk7Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgY3NpZF9zdWJkZXZfcmVnX3VwZGF0ZShjc2lkLCBpLCBmYWxzZSk7Cj4gICAgICAgICAg
ICAgICAgICAgICAgICAgX19jc2lkX2N0cmxfcmRpKGNzaWQsIGVuYWJsZSwgaSk7Cj4gICAgICAg
ICAgICAgICAgIH0KPiAgICAgICAgIH0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9xY29tL2NhbXNzL2NhbXNzLWNzaWQtZ2VuMy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9xY29tL2NhbXNzL2NhbXNzLWNzaWQtZ2VuMy5jCj4gaW5kZXggMGZkYmY3NWZiMjdkLi44MzBj
OWM4MThkM2QgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNz
L2NhbXNzLWNzaWQtZ2VuMy5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2Nh
bXNzL2NhbXNzLWNzaWQtZ2VuMy5jCj4gQEAgLTIxOSw2ICsyMTksOCBAQCBzdGF0aWMgdm9pZCBf
X2NzaWRfY29uZmlndXJlX3JkaV9zdHJlYW0oc3RydWN0IGNzaWRfZGV2aWNlICpjc2lkLCB1OCBl
bmFibGUsIHU4Cj4gICAgICAgICB3cml0ZWwodmFsLCBjc2lkLT5iYXNlICsgQ1NJRF9SRElfQ0ZH
MChwb3J0KSk7Cj4gIH0KPgo+ICtzdGF0aWMgdm9pZCBjc2lkX3N1YmRldl9yZWdfdXBkYXRlKHN0
cnVjdCBjc2lkX2RldmljZSAqY3NpZCwgaW50IHBvcnRfaWQsIGJvb2wgaXNfY2xlYXIpOwo+ICsK
PiAgc3RhdGljIHZvaWQgY3NpZF9jb25maWd1cmVfc3RyZWFtKHN0cnVjdCBjc2lkX2RldmljZSAq
Y3NpZCwgdTggZW5hYmxlKQo+ICB7Cj4gICAgICAgICB1OCBpOwo+IEBAIC0yMzAsNiArMjMyLDcg
QEAgc3RhdGljIHZvaWQgY3NpZF9jb25maWd1cmVfc3RyZWFtKHN0cnVjdCBjc2lkX2RldmljZSAq
Y3NpZCwgdTggZW5hYmxlKQo+ICAgICAgICAgICAgICAgICBpZiAoY3NpZC0+cGh5LmVuX3ZjICYg
QklUKGkpKSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgX19jc2lkX2NvbmZpZ3VyZV9yZGlf
c3RyZWFtKGNzaWQsIGVuYWJsZSwgaSwgMCk7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgX19j
c2lkX2NvbmZpZ3VyZV9yeChjc2lkLCAmY3NpZC0+cGh5LCAwKTsKPiArICAgICAgICAgICAgICAg
ICAgICAgICBjc2lkX3N1YmRldl9yZWdfdXBkYXRlKGNzaWQsIGksIGZhbHNlKTsKPiAgICAgICAg
ICAgICAgICAgICAgICAgICBfX2NzaWRfY3RybF9yZGkoY3NpZCwgZW5hYmxlLCBpKTsKPiAgICAg
ICAgICAgICAgICAgfQo+ICB9Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
cWNvbS9jYW1zcy9jYW1zcy12ZmUuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1z
cy9jYW1zcy12ZmUuYwo+IGluZGV4IDI2ODBhOTkxNDc2NS4uMTZhMGI1NjYzZmUyIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy12ZmUuYwo+ICsr
KyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy12ZmUuYwo+IEBAIC01
MDIsNiArNTAyLDM3IEBAIHZvaWQgdmZlX2J1Zl9kb25lKHN0cnVjdCB2ZmVfZGV2aWNlICp2ZmUs
IGludCB3bSkKPiAgICAgICAgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnZmZS0+b3V0cHV0X2xv
Y2ssIGZsYWdzKTsKPiAgfQo+Cj4gKy8qCj4gKyAqIHZmZV91cHN0cmVhbV9jc2lkX2hhc19yZWdf
dXBkYXRlIC0gQ2hlY2sgd2hldGhlciB0aGUgQ1NJRCBmZWVkaW5nIHRoaXMgbGluZQo+ICsgKiBp
c3N1ZXMgaXRzIG93biBzdHJlYW1vbiBSVVAgKGkuZS4gaXRzIGNvbmZpZ3VyZV9zdHJlYW0gZG9l
cyB0aGUgUlVQKS4KPiArICoKPiArICogVGhlIENTSUQtPlZGRSBsaW5rIGlzIGNyZWF0ZWQgaW4g
Y2Ftc3MuYyBmb3IgYWxsIENTSURzIGFuZCBWRkVzLCBzbyB0aGUKPiArICogdXBzdHJlYW0gZW50
aXR5IG9mIHRoZSBzaW5rIHBhZCBpcyBlaXRoZXIgYSBDU0lEIChwb3NzaWJseSB3aXRoIFJVUCkg
b3IgYW4KPiArICogSVNQSUYgKG5vIFJVUCkuIE9ubHkgZW5hYmxlZCBsaW5rcyBhcmUgY29uc2lk
ZXJlZC4KPiArICovCj4gK3N0YXRpYyBib29sIHZmZV91cHN0cmVhbV9jc2lkX2hhc19yZWdfdXBk
YXRlKHN0cnVjdCB2ZmVfbGluZSAqbGluZSkKPiArewo+ICsgICAgICAgc3RydWN0IHZmZV9kZXZp
Y2UgKnZmZSA9IHRvX3ZmZShsaW5lKTsKPiArICAgICAgIHN0cnVjdCBjYW1zcyAqY2Ftc3MgPSB2
ZmUtPmNhbXNzOwo+ICsgICAgICAgc3RydWN0IG1lZGlhX3BhZCAqcmVtb3RlOwo+ICsgICAgICAg
dW5zaWduZWQgaW50IGk7Cj4gKwo+ICsgICAgICAgcmVtb3RlID0gbWVkaWFfcGFkX3JlbW90ZV9w
YWRfZmlyc3QoJmxpbmUtPnBhZHNbTVNNX1ZGRV9QQURfU0lOS10pOwo+ICsgICAgICAgaWYgKCFy
ZW1vdGUgfHwgIWlzX21lZGlhX2VudGl0eV92NGwyX3N1YmRldihyZW1vdGUtPmVudGl0eSkpCj4g
KyAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKPiArCj4gKyAgICAgICBmb3IgKGkgPSAwOyBp
IDwgY2Ftc3MtPnJlcy0+Y3NpZF9udW07IGkrKykgewo+ICsgICAgICAgICAgICAgICBzdHJ1Y3Qg
Y3NpZF9kZXZpY2UgKmNzaWQgPSAmY2Ftc3MtPmNzaWRbaV07Cj4gKwo+ICsgICAgICAgICAgICAg
ICBpZiAoJmNzaWQtPnN1YmRldi5lbnRpdHkgIT0gcmVtb3RlLT5lbnRpdHkpCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgY29udGludWU7Cj4gKwo+ICsgICAgICAgICAgICAgICByZXR1cm4gISFj
c2lkLT5yZXMtPmh3X29wcy0+cmVnX3VwZGF0ZTsKPiArICAgICAgIH0KPiArCj4gKyAgICAgICBy
ZXR1cm4gZmFsc2U7Cj4gK30KPiArCj4gIGludCB2ZmVfZW5hYmxlX291dHB1dF92MihzdHJ1Y3Qg
dmZlX2xpbmUgKmxpbmUpCj4gIHsKPiAgICAgICAgIHN0cnVjdCB2ZmVfZGV2aWNlICp2ZmUgPSB0
b192ZmUobGluZSk7Cj4gQEAgLTUxMSw2ICs1NDIsNyBAQCBpbnQgdmZlX2VuYWJsZV9vdXRwdXRf
djIoc3RydWN0IHZmZV9saW5lICpsaW5lKQo+ICAgICAgICAgdW5zaWduZWQgbG9uZyBmbGFnczsK
PiAgICAgICAgIHVuc2lnbmVkIGludCBmcmFtZV9za2lwID0gMDsKPiAgICAgICAgIHVuc2lnbmVk
IGludCBpOwo+ICsgICAgICAgYm9vbCBydXBfaW5fY3NpZDsKPgo+ICAgICAgICAgc2Vuc29yX3Bh
ZCA9IGNhbXNzX2ZpbmRfc2Vuc29yX3BhZCgmbGluZS0+c3ViZGV2LmVudGl0eSk7Cj4gICAgICAg
ICBpZiAoc2Vuc29yX3BhZCkgewo+IEBAIC01MjMsNiArNTU1LDggQEAgaW50IHZmZV9lbmFibGVf
b3V0cHV0X3YyKHN0cnVjdCB2ZmVfbGluZSAqbGluZSkKPiAgICAgICAgICAgICAgICAgICAgICAg
ICBmcmFtZV9za2lwID0gVkZFX0ZSQU1FX0RST1BfVkFMIC0gMTsKPiAgICAgICAgIH0KPgo+ICsg
ICAgICAgcnVwX2luX2NzaWQgPSB2ZmVfdXBzdHJlYW1fY3NpZF9oYXNfcmVnX3VwZGF0ZShsaW5l
KTsKPiArCj4gICAgICAgICBzcGluX2xvY2tfaXJxc2F2ZSgmdmZlLT5vdXRwdXRfbG9jaywgZmxh
Z3MpOwo+Cj4gICAgICAgICBvcHMtPnJlZ191cGRhdGVfY2xlYXIodmZlLCBsaW5lLT5pZCk7Cj4g
QEAgLTU1Miw3ICs1ODYsOCBAQCBpbnQgdmZlX2VuYWJsZV9vdXRwdXRfdjIoc3RydWN0IHZmZV9s
aW5lICpsaW5lKQo+ICAgICAgICAgICAgICAgICBvdXRwdXQtPmdlbjIuYWN0aXZlX251bSsrOwo+
ICAgICAgICAgICAgICAgICBvcHMtPnZmZV93bV91cGRhdGUodmZlLCBvdXRwdXQtPndtX2lkeFsw
XSwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG91dHB1dC0+YnVmW2ldLT5h
ZGRyWzBdLCBsaW5lKTsKPiAtICAgICAgICAgICAgICAgb3BzLT5yZWdfdXBkYXRlKHZmZSwgbGlu
ZS0+aWQpOwo+ICsgICAgICAgICAgICAgICBpZiAoIXJ1cF9pbl9jc2lkKQo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIG9wcy0+cmVnX3VwZGF0ZSh2ZmUsIGxpbmUtPmlkKTsKPiAgICAgICAgIH0K
Pgo+ICAgICAgICAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmdmZlLT5vdXRwdXRfbG9jaywgZmxh
Z3MpOwo+Cj4gLS0KPiAyLjM0LjEKPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
