Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E39F606A31E
	for <linux-phy@archiver.kernel.org>; Sat, 31 Oct 2026 15:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0JSk0Un1;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=KmRcFMjy;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=STyInj35
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=K7EEpq73PtcNIYaH+Xwb2qnaDnkEBbyV+bF6kq6T3yQ=; b=0JSk0Un1LEOukTrycSaiYfpM9P
	XuaamLbFFi29nQzSkQLl7xzGCuFHKhZisgE/mAYDMeRkIlxvcsAFTHhtEO5C9tspRUzvxU1NQRw3K
	Gm84At4dnFROSy4G26R7KXVDn4W+CVLL7LKa5Yj15sqXaOOGySz1KVQcOaGNEKQ+pJl2Y49kr8noN
	12401/kCiay9nR+sCpi3xZu7eiztpKq4o6DPSqg2TqKqs+pEUYs1+QoEEyeksEUDXBAGpsN5CsJG1
	iMUXTil7WvDBczsTrdIU0xjIom4i48O5uLX7geBEiYJDq53tt19rdLJobK+J/EktRM/7yvYeBuZoX
	ORcNsEXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNAmz-0000000DQXH-38hH;
	Sat, 31 Oct 2026 15:14:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNAmw-0000000DQWs-46K0
	for linux-phy@lists.infradead.org;
	Sat, 31 Oct 2026 15:14:36 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69VD00qO2202683
	for <linux-phy@lists.infradead.org>; Sat, 31 Oct 2026 15:14:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	k45bIyRIivpuKqlpXieCA/zT+pO2wRBh0svmv0CAixQ=; b=KmRcFMjyc09Fr1mV
	R2JSZmSE1JACLEUT0r5i6anZ39bgy4cdQ19Gny8Kk1gs4ICBLnRy8Pe+NJ3rNJ1K
	SKV8/JWZGw8iz4L4muMlk9EXC6zlNq5CkkkPTPMyBvjXU5ULFXfY+Y/3AjnM6eZn
	gjFFze8o2IpVs7BVUaT8eTDZvP2+apCBt4rlHypzXGL+2J6mdE323xL+UgNHAo1F
	XBBa/+olVNQZMwh6Jf8b/8BS+0qlYdJ7X1poxUsTwBxMj2r30qe5pTBCTmv8/SIJ
	V+Sm473iQEgzh++hD4cUyt9SDQhwcrY5dA1VQT7dFoK++NJPdHx4zkH2QX41p8yB
	/s0wAA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hn5pkhqyf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 31 Oct 2026 15:14:32 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-91b4bf686ceso47995356d6.3
        for <linux-phy@lists.infradead.org>; Sat, 31 Oct 2026 08:14:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793459672; cv=none;
        d=google.com; s=arc-20260327;
        b=suY9RXi1TM+xbCq10p7ntr9Y4rKMpRoA0dS7PZ+Tu07scvC7BSaw7hr9iYrYvz0HdB
         dpBNUKeDg4j8PYgvj6w2GCI2npaxXoFgbwCRmBH3UNXzVj82CzE4Yu+Yjmvu1nVkQhkr
         bYTafTrS+FhNESEDkFMmet5y8/oNchLqo2iwhbQc+O29gaGnrvVclzoW3iXodFFp2W1G
         l/WVUdbz1aHfSEj7Uf8H/4IDOMHltqEZck+vQ7wfJkEERbeaX2+O0yo42ZqZkzK9LJHD
         elY/JgvKH8/ZRj4TdQhKUqG15+HB4P+hhStJA7BxEuSIJfJQLiQux15NOZEANW9fEl7P
         5iLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=k45bIyRIivpuKqlpXieCA/zT+pO2wRBh0svmv0CAixQ=;
        fh=3ndZIku+WSWCNTPVGo7FyEipmpGJ6CmVSCbHqGplQMc=;
        b=rF3cB83pSxFjSJgmSm97LkBr0pzZMqyRo74+4PbCY2CPGXltWi436wIf3RqUNog39t
         RSuUvXMxSlvE2hg1GVtmKj3QbwsvV6ndjF3zVK7DwmyuqfL8vluONSSsOLfYVY04aD12
         FFxVLSvbcAJnc92OKfaajHsmRZNjnqgonvdDk1P1j3WiL8ozkwhMjlweS6C7yUF6MmK9
         sOgudefbHlrg3L8Nne78JUPH/gHBxnxY6UCj0u1IjMahV1WokVk/11/htc8tXtvcsFDl
         kftjg53lwn46HqUSCWgYmhmsamnszVSj2ZcUdqLcGbNnTIaMuIguhYSRKkYwlTHJB9b0
         uuog==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793459672; x=1794064472; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=k45bIyRIivpuKqlpXieCA/zT+pO2wRBh0svmv0CAixQ=;
        b=STyInj355KqJwWUw8KF86NBE0fM40Xm7XvRj7OeElCa4ZkEhKFOri5MGsrLocK/09g
         pQjEGO0SWmanhY9q0xifk/dSUFIHemSJEwDJUpsVIXEhaO+BnipmlIq1j5OmZQlIZAk/
         UTdppz7e9C24RffvtF7ab2g0IsksPfEADFN/CZ3zahTS/MxTj/jE7kMI7wuoHUNk8cmP
         +uqozhcfDxCAA12UZcXXBNrGazAOZYmaOIb1N9odUiRKHvfDGDq//k2l4Idm8KHC/qCk
         5+YRkt7ozCMn2nyUAoUyp1u/tjpeVAxJQPsPf2lbsKIktqtA3Bz/8DbG8+WDwFot6LIm
         cxeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793459672; x=1794064472;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=k45bIyRIivpuKqlpXieCA/zT+pO2wRBh0svmv0CAixQ=;
        b=LNSOh+MNHWpyu29ziVKcFC1Mtnpl4Q7VZqmb9LW59KE3H03iGJJhqtqObYkwmSmpGE
         3b/0rUqc5FWWFsCDUnwVx9icHRX9JJXTAAx0sHVPJuCtoCKZJnmDFYdkuQRagRyMn3ZB
         EmSnPJlg5V168/iZTW9HrSI09Hfiz/OGD+RBY5g95wut5wt7AMwMlmI8QS8CJ8UDT9tx
         Gfc+sVPpTfYB710iZPxVXa/x57Lhw2B3YZ06SRz/+ot5qw7mjZ0O3N9mC7HRg6lxcHZv
         AycSE0F0SyF4txV1wDooW/CltqqQbuGq2lBQ/iueyffizcuLa73jNuFoiN3WyLX6zbub
         5hqA==
X-Forwarded-Encrypted: i=1; AKwUvBxvDkW838xO/Z7H8t0IgGTUKCqbZ8i1CGAE4t8w9kf+k/z10/TFH9AptpTto1wBM6JU1SULTz8J/KU=@lists.infradead.org
X-Gm-Message-State: AFq9FYJcpDhR5p1hKekyNTQtgki7yfVYaJKq3exLpRlWoTzp3sGnM4ih
	RsB3zUD1u1guWweUS5DYudkHDwcuO5zAZ1orSm/7Q9+uM6nA1IdVMVnmDQW5JDGKyvSlMXsK6Hu
	dGlWHj8Hqojc5q5bGUlHZClLeF7tslsytYHO3TDLT5KE0D3/Y+poRl4BG7+X7MBkjYOfDVMw36l
	+I9fJeBcEz7mDFAWoQtsaXvPoZUfrqFDM4M4ECw6zTEXk=
X-Gm-Gg: AYBFou2Gt6nJyIEv6BB5tPwcxsLXi1N69hN2LoYn+ChIYJj4ELSROkQu7pKCiOrCysE
	xnmnL2c8Zs5hwzI+hA0ksn3hqKpDQSqanN71D1WmNP+RbfTpid3uM5UL7CvO9kueo81wXiFHbhQ
	nl/evSObMeud7FND76SQFjqbZG192YmmLJmluHHEaiaZqs77GWhVJbXri63qv3pllUGDSI3lgEX
	RCGsAWOzFGWr9yL57CGnxd8SaAgERWdiF7jvnIzLQ+lKfGf+t0vqsWO+3aPjJ56mc7jy9SzvTb+
	4bnqZ8N/o2pVYujmSADa/2cmMXnK
X-Received: by 2002:a05:620a:6ccd:b0:93e:9292:1b96 with SMTP id af79cd13be357-94421585b68mr926451885a.3.1793459671792;
        Sat, 31 Oct 2026 08:14:31 -0700 (PDT)
X-Received: by 2002:a05:620a:6ccd:b0:93e:9292:1b96 with SMTP id
 af79cd13be357-94421585b68mr926448885a.3.1793459671340; Sat, 31 Oct 2026
 08:14:31 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261026224957.1115370-1-vz@kernel.org> <20261026224957.1115370-4-vz@kernel.org>
 <CAFEp6-16WAoyS+aY2BzPknsMtHa1cSfVYNmYvTKHm_MWqqW_ag@mail.gmail.com>
 <271ccc9b-ccf1-4254-9664-2f00b504a5a9@kernel.org> <d35b7934-54e7-425b-a223-570512be0374@oss.qualcomm.com>
In-Reply-To: <d35b7934-54e7-425b-a223-570512be0374@oss.qualcomm.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Sat, 31 Oct 2026 16:14:19 +0100
X-Gm-Features: AclHuK-O47xt6538FuV-XMWFTsdZCSR3ExRvh49zm5hewMSlbd2irNFZ3_KkfeA
Message-ID: <CAFEp6-23L+4+yzVxX815ZA2x1_tN8SpzL7ciNcb9b+gBT67AdQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/7] media: qcom: camss: Allow CSI2 PHY devices without
 CSIPHY resources
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Cc: Vladimir Zapolskiy <vz@kernel.org>, "Bryan O'Donoghue" <bod@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        linux-media@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>
X-Proofpoint-GUID: khpbp5hOBTlwyepoY9IF7NnvtT5l9uQD
X-Authority-Analysis: v=2.4 cv=Z4F5j3RA c=1 sm=1 tr=0 ts=6ae605d8 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=rJkE3RaqiGZ5pbrm-msn:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=J-ewYRROhU9zWjNAoAIA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDMxMDA2MCBTYWx0ZWRfX8V39oNCTdGg1
 koZsACDvQjO5ydRtD4Md7fFudYtne1pH1iWt2svYA5EIkbAYa5KbKL//oDf2UtCgkoGEw8383Yf
 iEfn/Mm7xrEegbkFPUVoQTPrl8HYVxI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDMxMDA2MCBTYWx0ZWRfX8PNtHqOpOuCI
 Qj4MMEwFLXXVOc+BkfU9EtBgfHd+tNVFzg8BwLhZOX2Mt8wJcLUN9GAlhPPN4F1drZ0SxZ8gxDi
 CYuBuBiEHIJcHBlQCxoTqSFVO0DU8Q5hUEfaLUh6DqQ8+2kK0142sz0xLOaW9QLt5/gJ1XlwLan
 5vSZYgFgXa6Ib0E+CENez01dZRycYvyWdvic2WStlLLUXM0xJBC6CtWh5mflPj6uy1PS4bg1cPv
 xhzjWtfc6BiPdRqAvkfxb1w6trNAFX0Z/p8xB2tio2kGumVA6q/VrxNntq1gS2D8DYp6FeLjp5P
 1RoKlrfWqLFUTw8dhP71xAO+26xWUCDFJpM9/Y0X4hitrqgD8d0iXGE/x5+xq2uwdpPAMb1ikkF
 hRKueg4fYso2OzxXl6hAkTwMMk+6zjg8J2wSjzZwHkGEdas7LJSP2tgdmTiyISfWPstyw7LOfj8
 j6FHhhD2JHGYF8/Xx1A==
X-Proofpoint-ORIG-GUID: khpbp5hOBTlwyepoY9IF7NnvtT5l9uQD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-31_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 phishscore=0 impostorscore=0 adultscore=0 spamscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610300000
 definitions=main-2610310060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261031_081435_171519_A93D1D99 
X-CRM114-Status: GOOD (  27.20  )
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gU2F0LCBPY3QgMzEsIDIwMjYgYXQgMzoxNOKAr1BNIE5paGFsIEt1bWFyIEd1cHRhCjxuaWhh
bC5ndXB0YUBvc3MucXVhbGNvbW0uY29tPiB3cm90ZToKPgo+Cj4KPiBPbiAyNy0xMC0yMDI2IDIy
OjMwLCBWbGFkaW1pciBaYXBvbHNraXkgd3JvdGU6Cj4gPiBQbGVhc2Ugbm90ZSB0aGF0ICdjc2lw
aHlfcmVzX3BoeScgd2FzIGludHJvZHVjZWQgYSBmZXcgbGluZXMgYWJvdmUKPiA+IGJ5IHRoaXMg
Y2hhbmdlLCBpdCdzIG9ubHkgcHVycG9zZSBpcyB0byBwcm92aWRlIHRoZSBuZWVkZWQgc3VwcG9y
dGVkCj4gPiBtZWRpYSBmb3JtYXRzLCBhbmQgdGhpcyBpcyB1bmF2b2lkYWJsZS4KPiA+Cj4KPiBS
aWdodCwgYWdyZWVkLiBHbHltdXIgdXNlcyB0aGUgbm9uLWxlZ2FjeSBwYXRoLCBidXQgdGhhdCBw
YXRoIHN0aWxsIHVzZXMKPiBjYW1zcy0+cmVzLT5jc2lwaHlfcmVzIGluIG1zbV9jc2lwaHlfc3Vi
ZGV2X2luaXQoKSwgYXQgbGVhc3QgdG8gZ2V0IHRoZQo+IENTSVBIWSBpZCBhbmQgc3VwcG9ydGVk
IG1lZGlhIGZvcm1hdHMuIFRoYXQgaXMgd2h5IEdseW11ciBjdXJyZW50bHkgaGFzCj4gYSBub24t
TlVMTCBjc2lwaHlfcmVzIGV2ZW4gdGhvdWdoIHRoZSBhY3R1YWwgUEhZIHByb2dyYW1taW5nIGlz
IGhhbmRsZWQKPiBieSB0aGUgc3RhbmRhbG9uZSBDU0kyIFBIWSBkcml2ZXIuCj4KPiA+IFRoaXMg
Y2hhbmdlIGZvbGxvd3MgdGhlIGFzc3VtcHRpb24gdGhhdCBwaXhlbCBmb3JtYXRzIGZyb20gYWxs
Cj4gPiBub24tbGVnYWN5IFBIWXMgYXJlIFNETTg0NSBjb21wYXRpYmxlLCB0aGF0J3MgdHJ1ZSBm
b3IgdGhpcyBwbGF0Zm9ybSwKPiA+IGl0IGlzIGV4cGVjdGVkIHRvIGJlIHRydWUgZm9yIHRoZSBt
b3N0IG9mIGFwcHJvYWNoaW5nIG5vbi1sZWdhY3kKPiA+IHBsYXRmb3JtcywgYW5kIG9uIGRlbWFu
ZCBpdCBtYXkgYmUgY2hhbmdlZCBsYXRlciBvbi4KPiA+Cj4gPiBUaGUgY3VycmVudCBmb3JtIGxp
a2VseSBpcyB0aGUgbW9zdCBjb21wYWN0IGFuZCB0aGUgbGVhc3QgaW52YXNpdmUKPiA+IGNoYW5n
ZSwgd2hpY2ggZ2V0cyB0byB0aGUgcG9pbnQgb2Ygc3VwcG9ydGluZyBDQU1TUyBvbiBwbGF0Zm9y
bXMKPiA+IHdpdGggbm8gQ1NJUEhZIHJlc291cmNlcyBnaXZlbiBpbiB0aGUgQ0FNU1MgZHJpdmVy
Lgo+ID4KPiA+IEZvciBpbnN0YW5jZSwgbm90ZSwgdGhlIHJlY2VudGx5IHByb3Bvc2VkIEdseW11
ciBDQU1TUyBbMV0gcmVmZXJlbmNlcwo+ID4gWDFFIENTSVBIWSByZXNvdXJjZXMsIHdoaWNoIGlz
IGFjdHVhbGx5IGluY29ycmVjdCwgc2luY2UgdGhlcmUgaXMKPiA+IG5vICJjc2lwaHlYIiBJL08g
cmVzb3VyY2VzIGFueW1vcmUgZm9yIEdseW11ci4gVGhpcyBjaGFuZ2UgY2FuIGJlCj4gPiByZXVz
ZWQgZm9yIEdseW11ciBhcyB3ZWxsLCBhbmQgaXRzIHJlZmVyZW5jZSB0byBYMUUgQ1NJUEhZcyBj
YW4gYmUKPiA+IGRyb3BwZWQsIGJ1dCBhbnkgYmV0dGVyIHByb3Bvc2FsIG9yIGltcHJvdmVtZW50
IGFyZSB3ZWxjb21lLgo+Cj4gVGhlIGludGVudGlvbiB3YXMgbm90IHRvIGRlc2NyaWJlIENBTVNT
LW93bmVkIENTSVBIWSBJL08gcmVzb3VyY2VzIGZvcgo+IEdseW11ci4gVGhpcyBhbHNvIGZvbGxv
d3MgdGhlIGVhcmxpZXIgc3VnZ2VzdGlvbiB0byByZXVzZS9mYWxsIGJhY2sKPiB0byB0aGUgSGFt
b2EvWDFFIENBTVNTIGRlc2NyaXB0aW9uIHdoZXJlIHBvc3NpYmxlOgo+Cj4gaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvYWxsL2xlcHY3Y2d5a3J5bGZpY2RkY25uYmlpM2t6eHNpZWkzaXRjd2M0aWJx
NTNzMzNyb2dpQG5kbmY3enJ0dTVleC8KPgo+IE1vdmluZyBHbHltdXIgdG8gLmNzaXBoeV9yZXMg
PSBOVUxMIGlzIHBvc3NpYmxlLCBidXQgd2l0aCB0aGlzIGZhbGxiYWNrCj4gdGhlIENTSVBIWSBp
ZCBjb21lcyBmcm9tIHRoZSBDQU1TUyBwb3J0IG51bWJlci4gU2luY2UgR2x5bXVyIHVzZXMKPiBD
U0lQSFkgaWRzIDAsIDEgYW5kIDQsIHRoYXQgd291bGQgYWxzbyByZXF1aXJlIEdseW11ci1zcGVj
aWZpYyBkcml2ZXIKPiBkYXRhIGFuZCBEVC9iaW5kaW5nIHVwZGF0ZXMgdG8gZGVzY3JpYmUgQ1NJ
UEhZNCBhcyBDQU1TUyBwb3J0IDQuCj4KPiBCcnlhbiwgTG9pYywgZG8geW91IHRoaW5rIHdlIG5l
ZWQgdGhhdCBjaGFuZ2Ugbm93LCBvciBzaG91bGQgR2x5bXVyIGtlZXAKPiB0aGUgY3VycmVudCBh
cHByb2FjaCBmb3IgdGhpcyBEVFMgc2VyaWVzPwoKSSBzZWUgaW4gdGhlIGZvbGxvd2luZyBpbiB5
b3VyIEdseW11ciBzZXJpZXM6CnBvcnRAMyB7CiAgIHJlZyA9IDwzPjsKICAgY2Ftc3NfY3NpcGh5
NF9pbmVwOiBlbmRwb2ludCB7CiAgIHJlbW90ZS1lbmRwb2ludCA9IDwmY3NpcGh5NF9vdXRfZXA+
Owp9OwoKV2hpY2ggQ0FNU1MgcGlwZWxpbmUgaW50ZXJmYWNlIGluZGV4L2luc3RhbmNlIGlzIENT
SVBIWTQgY29ubmVjdGVkIHRvPwpJZiBpdCBpcyBjb25uZWN0ZWQgdG8gaW50ZXJmYWNlIDQgb24g
Q0FNU1Mgc2lkZSwgdGhlbiB3ZSBzaG91bGQgdXNlCnBvcnRANC4KClJlZ2FyZHMsCkxvaWMKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
