Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A40ECCA462
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 14:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SD056jSHnN5gCIW6ZsnXtKZ0EOjdl5vLybKFhXlSRkg=; b=qGKxeTAjr4byGj
	xLqwJaOZsyD4vaEwchNgxciJy9ooiM/A/uUCgsqeDuCjTkomer8tXB9RGVRyHqUVHl8EspwWyQb22
	V7TKb9i+JoAZOGm2Dpc1eK+06O+QHWA+UF35H9pyxAK6v+/M5V0tkGhBB3hMMOlLMR6yMyHXsiDxy
	0PzPFt61uXoYF5NG5D1gEC7Ak9Oa+D3af12C37W/e9PFUuZq8I0qUGcq5kRlp39Cnt9B+heOUfFCw
	2iZfuqn7xpqosks8pBe89AVdF4vl7/hHNqrIx0Jo7EJD97tXqDQtwdRA3iaAALok94oZp7PNBwo4V
	J9Mo4WdLSd3T1PVjwa8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHik2-000000037gS-3O0T;
	Fri, 16 Oct 2026 14:17:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHik1-000000037gM-0fbe
	for linux-phy@bombadil.infradead.org;
	Fri, 16 Oct 2026 14:17:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=pB1atSZg29gDXgN5LdUkRfrmaTO7JZmGwqn+wbyaUhU=; b=Ij69scYlKhME0uOEgVj6L/z/ED
	tRsE1GpEflcI9BS/qnUunPMB+G5vgj6MGHSZ9BaRQyiBtkMbY40SmrlXEQn6BZu6LV0wwmWeumvRK
	XF/7clZiQaWrAzCRYW/95Il+igGKJmnrT9brls1EJxzk44dVA0V5E0RBKu3wma3LWHpvaHwsGuSQI
	h/XuwAd5nCDjcZRw+hYyrBYIL3fhrgyceQ4ZaEJl6cj2z2pHQPc+5JWrKxjWdAmiER7wo+le4C7t3
	s4JcaW1fAd7W7fcgFgpjRzdNtYqU+qBJ8MqedP/NyF2n8JxtQ3hpuG6V7RmLvPBwOMpfbmbgmUGdc
	HjI5sP3Q==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHijx-00000001aMa-220R
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 14:17:00 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69GE6Qcu2494912
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 14:16:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pB1atSZg29gDXgN5LdUkRfrmaTO7JZmGwqn+wbyaUhU=; b=C1Emuyl7VV7tQeNc
	hflvsy3osABsc1JcCpGtvp/8KkQ2E1QkhM55GeINa6zhov/PzeC9viOB4XXMbp2N
	LHYkVkncQvai5JxENQ34qE5oZdulmWh7c0bWLmwgmJGvriaikRtQh22YDmnpp7oJ
	Vl2lYuuTbN0St4Mn5VWEgxWQiT3wKUKKKTmZIWsvxSya5o/fiVAjyJL1NO6W3VIc
	Zgv9MPwu3BpzWZdiD1bK7ILsnuc6ZrwR+1t6vi6EHc5f09Aft2o2J2LhuGpU3/KC
	UZeI4Xtksf4EaxMOUTvih9xsZxgiBQaf4jf2KmnllgfX0WwGxYwKawBZ+vvbFQLg
	KZvjQQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hb8a8b0b5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 14:16:55 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-93bf4c0af4eso204759585a.1
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 07:16:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792160214; cv=none;
        d=google.com; s=arc-20260327;
        b=BhN4AZ8Ulc5vLZeP3w+FGs3dIcIMLvnY7FDpJ5oblxYOHuj3OG8g3+v5IXaZHip3Fw
         QmM4uDTXt3M+Ops5q9p+DgNQZC7RkynJxacMx6k955xpxGmityDBPVV5S4rDLQhKNVQk
         N+T+h/dtwqHjccbzbCRimMVka/9mcYSNYA5XKmKvAPH70ZY7FylXtHQW4qe5pRG7C/DS
         r9/bSG0DehYCwt4AHwdTJTxGWDE7uVbbgfeGStB3KkWZt8CqXuT3jY54CgqSbvQFe1co
         3s9U8FstTIixa6Cb16PDjIOG0XfyInZf+2FTW9t+LTRYvEwrMuwsqHmhfTxI+xOfzRqG
         yxtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=pB1atSZg29gDXgN5LdUkRfrmaTO7JZmGwqn+wbyaUhU=;
        fh=mBm9Ut7FfWP4hfcDQLgfvia2JBX+JgZIvv5qaRp3x/0=;
        b=qUGtlbpwOZPtkhfcC0AmSAYvxlPQ1JnHu7MjuNBH+ybzQbIM5BAZ3iFLne454oZfxG
         3TfY30nQ2VRsgTIxWXEgnlrSpEJmWXjZROsozF7uqnAya1MWvVjuooYPaD2F8nSmwZZB
         q2kmy+fAfK6wa8PsOHV3mcOvbvZKYYiMiIbXbLN5UkuqrCPpijiJOHXzh6TYWeZ6au75
         gNfbGy48qeoxluDyPbK22Re51BGn0NJ9ETL/ZFqOdoyUQKyCEzIC56KbrRdVuykZSgLt
         Qr2U28f9vj9+WehhLK/nIf9iMPh2eeSBOuIdJjW+7ARZUgpAv+eWQbAjqE6qHX7mboJk
         3gSQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792160214; x=1792765014; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=pB1atSZg29gDXgN5LdUkRfrmaTO7JZmGwqn+wbyaUhU=;
        b=YHAoaFLkKVQSM3dzThuL6gzJ1UuYJz9khbdHa7T+94L249/Puu7YMgmc8ylUwFSEzu
         jRMSpb0OB159eH41sQ4Gpe++5rzQ0DDw5poecfN73/du5VkyWypQWyGci4ATzFDUCWwE
         LZkcgXHLmRwacNK97dFX4SePVmCa6EYoDgAuHp6toPKjhgs3M3bF5jWA9sJX/gmtjTPK
         hb0H3IbaFqvN+1WflOnXQWo5BDCM/h0kJ2kuvDCRZmYjApBt+LD95HeFwYJOaR6SO3aM
         0bPi4xU4TkWAV5s3ae081c2xNXJEss0UniFn39uaupAjNT+99PClKh1b7IZ6z8S7Pm5t
         gUOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792160214; x=1792765014;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=pB1atSZg29gDXgN5LdUkRfrmaTO7JZmGwqn+wbyaUhU=;
        b=O1GaQGr+3IcatTtRZT0pRqGCDyzUH0CaR16ZaT/r1pm14GuM71ltxub9ZmZNLLJ7/Y
         XGdJN9RKm3aUdvpcN3bmQ7l6te0dnRKuE79jXc8rUzpWvq4sgBSfvGx4lZ+2tSESnrOc
         3Lk3nB9/YUrycQAoHRwYzdzacwJYRm4rGkUk8VVWGTLzF+scrLVXYatB7148BZhayrou
         AS+DyUVily9rsD3VJ1/hO8DhhM+ykNUQJIcSqM7DIPNjNObksesZyu3Fse5LqoRvNHRy
         xidDPZx0MuiH4vIwiHWW+k9Xh7205fLdG0Nhql1Py/zuHlVsbvAqFpQEyzxojc5FX522
         tknQ==
X-Forwarded-Encrypted: i=1; AKwUvBw0kCWgRWwTAUipseAcSiFqoQ6i0XE6K+1pLePC9KyvcX8lZ5BE6sJULcmD9vrmNok3lPkSESp4WNQ=@lists.infradead.org
X-Gm-Message-State: AFq9FYJnajjC4qOqf4ec7hUMwRj6Hxr6t9w2h4Aj2tkG10iQGDi3KZR4
	UJ9IjDtxfJpyja/AMeomccUA9bdjxNO6l105BpmcT+l9HZumqSB08u7Ei7hdkBTrnv8yn39fHpy
	477AWND1Ot58mNsn5dUUnGF8hBquGDD+LGpozlRNf8boZBqFvW9yk0PL8J3mEhtZEKB2K3SGv4j
	FUMxgmbtuAXoIBqCCX3IKjDaUeu+dta2YkceITaQAzqb0=
X-Gm-Gg: AYBFou2mhzVWzJpfyEARSLdRvH/AroXxpTE9kt+sUxV9CTKbQfd/3dt/wSByqtkOoIL
	VVmzqXnrhHVhIfc8oeFHEnD1J7S4zNzBsTzD/ZOE7g0e0ZXT9wbwcpj4fjVxOxGSXuf0c9fHd6Y
	pAgMrUZrsgHhnbKQMjHhOUosvmjDZohhQ9Cj0xnBVMxTR3IfPaPI12+STqlncbbnxNL9QdZT+yJ
	8pY+bdXe0cgzUUXKbPNyKkPnxU+A63OIlJAts+9PSuiwGCiL4/JPaRgV8A1oVatJbls5J+/V+mf
X-Received: by 2002:a05:620a:2550:b0:93e:6481:c8e0 with SMTP id af79cd13be357-93f17d83913mr539583085a.10.1792160214046;
        Fri, 16 Oct 2026 07:16:54 -0700 (PDT)
X-Received: by 2002:a05:620a:2550:b0:93e:6481:c8e0 with SMTP id
 af79cd13be357-93f17d83913mr539577085a.10.1792160213520; Fri, 16 Oct 2026
 07:16:53 -0700 (PDT)
MIME-Version: 1.0
References: <20261016-x1e-cphy-rfc-v2-0-377654253193@gmail.com> <20261016-x1e-cphy-rfc-v2-1-377654253193@gmail.com>
In-Reply-To: <20261016-x1e-cphy-rfc-v2-1-377654253193@gmail.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Fri, 16 Oct 2026 16:16:42 +0200
X-Gm-Features: AclHuK99Hd_HGOMZN5f2R6Kx3faR2NTk9mAbjl7PJ4fmgQ6YLOcNMULcCIH6CbM
Message-ID: <CAFEp6-3RN2e3-wjLoyjQfLEE4GnjhC-9SJiz4FW6GdBKewZTNg@mail.gmail.com>
Subject: Re: [PATCH RFC v2 1/4] phy: Add MIPI C-PHY mode and configuration options
To: geocausa@gmail.com
Cc: "Bryan O'Donoghue" <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        David Heidelberg <david@ixit.cz>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        Suresh Vankadara <svankada@qti.qualcomm.com>, tjose@qti.qualcomm.com,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE2MDA1NiBTYWx0ZWRfXzsqT9LCpvQbi
 Rp5t6Q0qQPpl4SnHPy0nB5gb2Qgvlx2LcKFVXzuB0ao6i+ASkUzg1pNH1R8wp+relvnBls4O/Wn
 QEnb26j9YyCMyEywLX350RIP4CK1Yng=
X-Proofpoint-ORIG-GUID: SXrHCrSB-ro-OhWT04rS3QGJx9Jw1z6G
X-Authority-Analysis: v=2.4 cv=GJadgeNK c=1 sm=1 tr=0 ts=6ad231d7 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yOCtJkima9RkubShWh1s:22 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=Tql0FWbOqO6HYHnYiHkA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE2MDA1NiBTYWx0ZWRfX+HN6MgZryKJb
 bToz6S0VUEsBHzVwfh5L2shARHUaCYKZUMj7yScln7eKUoVueiiNulIlPCGTgRfJROzJME5FOcl
 Da6JOwRj99VIpBnr0epfovPd1e4q6gT8l1IlEg2wsfYkDwDocG7DfoCxRxICkx5bLGk7SeVVfK0
 axjRPS41XkPQcxoST9DxNLgTYj+KjHsUiOGWNDT+zmRgpzri0AX4zaYssM+yVRpaAtxV+kvNsG5
 lB9wAy0BBpZeSm3H6nTDIGRGQO4s6Kz8+HXd33By5bRv/jpzEf3n+2jhPmGr4CYoHuG5I2mc56R
 ZB+rnMFWzC4wwQQ16vCyFI1O6iMSyG5De7cW6lFl0yh3mpUG6RVGmMnoxugtQZAeexG1GEc6V2e
 zg1yC6gaOR+gCjD31B1I2eq0eN7U+tZkHWo016LoGAXSXMnvf7kQAKBpnBQsuH41UwevNc0sLDY
 97c+Sc8Gh9a7AORsj8Q==
X-Proofpoint-GUID: SXrHCrSB-ro-OhWT04rS3QGJx9Jw1z6G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-16_02,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610160056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_151657_911351_F0A3474A 
X-CRM114-Status: GOOD (  25.50  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBPY3QgMTYsIDIwMjYgYXQgMTI6NTfigK9QTSBHZW9yZ2UgTmVhY3N1IHZpYSBCNCBS
ZWxheQo8ZGV2bnVsbCtnZW9jYXVzYS5nbWFpbC5jb21Aa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBG
cm9tOiBHZW9yZ2UgTmVhY3N1IDxnZW9jYXVzYUBnbWFpbC5jb20+Cj4KPiBUaGUgZ2VuZXJpYyBQ
SFkgZnJhbWV3b3JrIGhhcyBhIG1vZGUgYW5kIGNvbmZpZ3VyYXRpb24gb3B0aW9ucyBmb3IgTUlQ
SQo+IEQtUEhZIGJ1dCBub25lIGZvciBDLVBIWSwgc28gYSBDU0ktMiByZWNlaXZlciBoYXMgbm8g
d2F5IHRvIGFzayBhIFBIWQo+IHRoYXQgZG9lcyBib3RoIGZvciBDLVBIWS4gQWRkIFBIWV9NT0RF
X01JUElfQ1BIWSBhbmQgc3RydWN0Cj4gcGh5X2NvbmZpZ3VyZV9vcHRzX21pcGlfY3BoeS4gVGhl
IG9wdGlvbnMgYXJlIHRoZSB0d28gdmFsdWVzIGEgcmVjZWl2ZXIKPiBrbm93czogdGhlIHN5bWJv
bCByYXRlIG9uIGVhY2ggdHJpbyBhbmQgdGhlIG51bWJlciBvZiB0cmlvcy4KPgo+IFRoZSBmaXJz
dCB1c2VyIGlzIHRoZSBRdWFsY29tbSBDU0kyIFBIWSwgd2hvc2UgWDFFODAxMDAgaW5zdGFuY2Vz
IGNhcnJ5Cj4gdGhlIEMtUEhZIGZyb250IGNhbWVyYSBvZiB0aGUgU3VyZmFjZSBQcm8gMTEuCj4K
PiBSZXZpZXdlZC1ieTogQnJ5YW4gTydEb25vZ2h1ZSA8YnJ5YW4ub2Rvbm9naHVlQGxpbmFyby5v
cmc+Cj4gQXNzaXN0ZWQtYnk6IENsYXVkZTpjbGF1ZGUtb3B1cy01LTUKPiBTaWduZWQtb2ZmLWJ5
OiBHZW9yZ2UgTmVhY3N1IDxnZW9jYXVzYUBnbWFpbC5jb20+CgpSZXZpZXdlZC1ieTogTG9pYyBQ
b3VsYWluIDxsb2ljLnBvdWxhaW5Ab3NzLnF1YWxjb21tLmNvbT4KCj4gLS0tCj4gIGluY2x1ZGUv
bGludXgvcGh5L3BoeS1taXBpLWNwaHkuaCB8IDI3ICsrKysrKysrKysrKysrKysrKysrKysrKysr
Kwo+ICBpbmNsdWRlL2xpbnV4L3BoeS9waHkuaCAgICAgICAgICAgfCAgNSArKysrKwo+ICAyIGZp
bGVzIGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xp
bnV4L3BoeS9waHktbWlwaS1jcGh5LmggYi9pbmNsdWRlL2xpbnV4L3BoeS9waHktbWlwaS1jcGh5
LmgKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMC4uZWY2YWY2MWRlCj4g
LS0tIC9kZXYvbnVsbAo+ICsrKyBiL2luY2x1ZGUvbGludXgvcGh5L3BoeS1taXBpLWNwaHkuaAo+
IEBAIC0wLDAgKzEsMjcgQEAKPiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAg
Ki8KPiArI2lmbmRlZiBfX1BIWV9NSVBJX0NQSFlfSF8KPiArI2RlZmluZSBfX1BIWV9NSVBJX0NQ
SFlfSF8KPiArCj4gKy8qKgo+ICsgKiBzdHJ1Y3QgcGh5X2NvbmZpZ3VyZV9vcHRzX21pcGlfY3Bo
eSAtIE1JUEkgQy1QSFkgY29uZmlndXJhdGlvbiBzZXQKPiArICoKPiArICogVGhpcyBzdHJ1Y3R1
cmUgaXMgdXNlZCB0byByZXByZXNlbnQgdGhlIGNvbmZpZ3VyYXRpb24gc3RhdGUgb2YgYQo+ICsg
KiBNSVBJIEMtUEhZIHBoeS4KPiArICovCj4gK3N0cnVjdCBwaHlfY29uZmlndXJlX29wdHNfbWlw
aV9jcGh5IHsKPiArICAgICAgIC8qKgo+ICsgICAgICAgICogQHN5bWJvbF9yYXRlOgo+ICsgICAg
ICAgICoKPiArICAgICAgICAqIFN5bWJvbCByYXRlIG9uIGVhY2ggdHJpbywgaW4gc3ltYm9scyBw
ZXIgc2Vjb25kLgo+ICsgICAgICAgICovCj4gKyAgICAgICB1bnNpZ25lZCBsb25nIGxvbmcgICAg
ICBzeW1ib2xfcmF0ZTsKPiArCj4gKyAgICAgICAvKioKPiArICAgICAgICAqIEB0cmlvczoKPiAr
ICAgICAgICAqCj4gKyAgICAgICAgKiBOdW1iZXIgb2YgYWN0aXZlIHRyaW9zLgo+ICsgICAgICAg
ICovCj4gKyAgICAgICB1bnNpZ25lZCBjaGFyICAgICAgICAgICB0cmlvczsKPiArfTsKPiArCj4g
KyNlbmRpZiAvKiBfX1BIWV9NSVBJX0NQSFlfSF8gKi8KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9s
aW51eC9waHkvcGh5LmggYi9pbmNsdWRlL2xpbnV4L3BoeS9waHkuaAo+IGluZGV4IGM0ODBkNmNi
NC4uZjEyMzM3ODM0IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbGludXgvcGh5L3BoeS5oCj4gKysr
IGIvaW5jbHVkZS9saW51eC9waHkvcGh5LmgKPiBAQCAtMTksNiArMTksNyBAQAo+ICAjaW5jbHVk
ZSA8bGludXgvcGh5L3BoeS1kcC5oPgo+ICAjaW5jbHVkZSA8bGludXgvcGh5L3BoeS1oZG1pLmg+
Cj4gICNpbmNsdWRlIDxsaW51eC9waHkvcGh5LWx2ZHMuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3Bo
eS9waHktbWlwaS1jcGh5Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9waHkvcGh5LW1pcGktZHBoeS5o
Pgo+ICAjaW5jbHVkZSA8bGludXgvcGh5L3BoeS10aHVuZGVyYm9sdC5oPgo+Cj4gQEAgLTQyLDYg
KzQzLDcgQEAgZW51bSBwaHlfbW9kZSB7Cj4gICAgICAgICBQSFlfTU9ERV9QQ0lFLAo+ICAgICAg
ICAgUEhZX01PREVfRVRIRVJORVQsCj4gICAgICAgICBQSFlfTU9ERV9NSVBJX0RQSFksCj4gKyAg
ICAgICBQSFlfTU9ERV9NSVBJX0NQSFksCj4gICAgICAgICBQSFlfTU9ERV9TQVRBLAo+ICAgICAg
ICAgUEhZX01PREVfTFZEUywKPiAgICAgICAgIFBIWV9NT0RFX0RQLAo+IEBAIC02OSw2ICs3MSw4
IEBAIHVuaW9uIHBoeV9ub3RpZnkgewo+ICAgKgo+ICAgKiBAbWlwaV9kcGh5OiBDb25maWd1cmF0
aW9uIHNldCBhcHBsaWNhYmxlIGZvciBwaHlzIHN1cHBvcnRpbmcKPiAgICogICAgICAgICAgICAg
dGhlIE1JUElfRFBIWSBwaHkgbW9kZS4KPiArICogQG1pcGlfY3BoeTogQ29uZmlndXJhdGlvbiBz
ZXQgYXBwbGljYWJsZSBmb3IgcGh5cyBzdXBwb3J0aW5nCj4gKyAqICAgICAgICAgICAgIHRoZSBN
SVBJX0NQSFkgcGh5IG1vZGUuCj4gICAqIEBkcDogICAgICAgICAgICAgICAgQ29uZmlndXJhdGlv
biBzZXQgYXBwbGljYWJsZSBmb3IgcGh5cyBzdXBwb3J0aW5nCj4gICAqICAgICAgICAgICAgIHRo
ZSBEaXNwbGF5UG9ydCBwcm90b2NvbC4KPiAgICogQGx2ZHM6ICAgICAgQ29uZmlndXJhdGlvbiBz
ZXQgYXBwbGljYWJsZSBmb3IgcGh5cyBzdXBwb3J0aW5nCj4gQEAgLTc4LDYgKzgyLDcgQEAgdW5p
b24gcGh5X25vdGlmeSB7Cj4gICAqLwo+ICB1bmlvbiBwaHlfY29uZmlndXJlX29wdHMgewo+ICAg
ICAgICAgc3RydWN0IHBoeV9jb25maWd1cmVfb3B0c19taXBpX2RwaHkgICAgIG1pcGlfZHBoeTsK
PiArICAgICAgIHN0cnVjdCBwaHlfY29uZmlndXJlX29wdHNfbWlwaV9jcGh5ICAgICBtaXBpX2Nw
aHk7Cj4gICAgICAgICBzdHJ1Y3QgcGh5X2NvbmZpZ3VyZV9vcHRzX2RwICAgICAgICAgICAgZHA7
Cj4gICAgICAgICBzdHJ1Y3QgcGh5X2NvbmZpZ3VyZV9vcHRzX2x2ZHMgICAgICAgICAgbHZkczsK
PiAgICAgICAgIHN0cnVjdCBwaHlfY29uZmlndXJlX29wdHNfaGRtaSAgICAgICAgICBoZG1pOwo+
Cj4gLS0KPiAyLjUzLjAKPgo+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
