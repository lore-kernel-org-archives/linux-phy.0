Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1A0606A31C
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 02:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3tpU4rj2;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Xq4YDBbg;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=aIq5oInm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=tWAhBYL6I931zWDPcvu7UPDy9YuhuLkIDBpRJWKwwAw=; b=3tpU4rj21EpsqIei14ZN9Fqmml
	vIHulpD7gV3SwnGHBA9kVHdNFSX8TUHCU1xN/lkgY2GE8+9+5JUkndokJZGb+0A4l/zTamF5JL5qZ
	6UWDeqALjXrzt/38xQj/0tHaKcTgOJHR+vjFtT5r5QpL9IYSIMHG5hcEosewMXb799dWZSRKYYiur
	UyFuClf9Yd/VUn8HWOBLk2YkpmIZCkBym2d5N2hccu6aIcVObM72QsOfZdHnTX2Z4si/TtAtaqcJH
	DSzOMdDTNmKj2/bfDvxG1qLvjR5456+YW0xAMzHu5Wb34QlAazzjaNr2j324ag8A63IXm93n6B7Yt
	TIk8jpnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQF0J-0000000H7CD-3xkQ;
	Mon, 09 Nov 2026 02:21:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQF0H-0000000H7Bt-1sD6
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 02:21:02 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A90Go3O2359072
	for <linux-phy@lists.infradead.org>; Mon, 9 Nov 2026 02:21:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vTHCJSTydXzyoZqC+6clQ/H8kutgx2FD4bqzC+SBHLQ=; b=Xq4YDBbgOranx0+u
	WArNa9ZawxoY9HxYffDHwnZ+aN6p9hVwn/tSbbRi/E0PQBLz4UzNwokfi4UFpu6H
	CgG8kDSx4KUjuuQj/VzluU+ePM+0JJ1TTl9zwObGSrPYYNlZyKTabIApp6n1hIPS
	DOcHxxiGDwblZqf6TA2pAooDOHwR8N8fN+JrozW4MFB3ObLaKne3DGoU47TdFuo5
	q/HevaVpCn86rpqewqN/TR3u2pPIBzpREilS4A2FByUovbd9ixydMNYxL4SqQMPj
	XhlDThZWiEAw2jDAaZYoBCDHGfabnNciA/51OF7rdTn0mXI3URgdarXMuqYsa6AU
	L4XhsQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hsvrev67q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 02:21:00 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3ae19907a31so318934a91.0
        for <linux-phy@lists.infradead.org>; Sun, 08 Nov 2026 18:21:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794190860; x=1794795660; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vTHCJSTydXzyoZqC+6clQ/H8kutgx2FD4bqzC+SBHLQ=;
        b=aIq5oInmNPILakXNtTOBONLNAcgQVORuvIs39qqAWR1YzTshuZ8Mhk4RkOLs4pv7uZ
         YxknpB6MJIQ+rSk6hmPcZbmribDcNnDW+Xybfhtsgfti1Ox4AtXCVzPiQ3cGzAk1B2R0
         r0tlbMjj+vlTPuvMlFxNgynEck2tFb4j/yOYtbHd/GBH+QfxINhRAux1xC/bqZPEhDqI
         twKHDOtxVesJRNfhMQcYrRLgTMFITRjfSEZgT9NQpZvQr/7ZtvquN3dUisl66yahkgk4
         4uFQtbtztpM6ADqDK+twlUojU3NkdVKg8RF0ePfKKRDn9u4evX27+Ey6Fr2wYfzyijKp
         QQjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794190860; x=1794795660;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vTHCJSTydXzyoZqC+6clQ/H8kutgx2FD4bqzC+SBHLQ=;
        b=G/k8NWNEV99WMiaUQhUK1U3ZBdC9W+Oz0wqlD/JIzGs7diS/UtaOrvg+WvlKQZ4RkZ
         wLtYvw4skbbAH9yvWPFC6z3hUoj3aKUy5EbJpbUj1naepCR8ddtBO1VTEkJXShE50ePb
         X8y1VX/gaQf1lBbPsLkiNhTVpS2CXecHmM6ocztW6Vv5rC2PQjDZ5Ts8w4dFvpap2IpI
         gd6P1Jbr7/xkPUDOsQ7DUQvp8ow4Tn0tIRLvkUxORUqEIkkaCK3Dc2vG94Vd5qca3UCF
         GVIpjFBvxLbrbdkYge/91F32ov5og4/FTqQeFukmQrrPZgbfFKlqatMUU9GQQIyfqFK3
         a3EA==
X-Gm-Message-State: APuU4Z+f710lmxV0FFLgODqgsAfgmqDhvbgrnR85F4gBoMaZep+xGdD4
	9GDxjH6OGuiGl8BEPODnWn7qS14qZ8xc+qOX6MVuXVnN7Z5/VfZ4BMuHmCi6Ovl5UeR6bPte5Ll
	g2wp08f5rTHLb/VuYVQDEWhVqYMVOPgpiwdGQHvaUjosnJSdZRNlEWfVQZOMeaa7HrRNkCRmZYb
	Gc
X-Gm-Gg: AYBFou0Mfd4bIhEQ88O3A6WGGkJyfx9CvKQUTqBWg/dlYwe9qquu/07I44ufgx2NBBu
	hvdKESrI446Hv1Wdip+lx2YxBzd+6gWEQLZx3yd+pT98jCcXlu9bs3fBzruXhRVTHvFFJwUanAj
	8jTVBbT5uKKtiVCl+8fOgeq5pUl41lRzFossWaPakw7iBzVcLO9KGyAHqGsWjWy5FALtG+nJ89p
	Z5iUljoSA4jUeuK6uA5vros1rXL/CdouGI0Na6IYfMq1OFXXfZgN1OIh4ZHC/M95Yl2nUZjau9I
	xU+wV4YsYyA2BLVadN1pDm5Y9h0PAPbYPRScIGBYZpD8xsQqjgXaQp/94DnyQ17hzPwOMGdwguU
	fEXt4kXRiGOx2Zq3BafBGXrmomitZkhDd10ozi70a2GNRy5VClOvg0lcp7fnI4QUT0+KGpncMy+
	oDyQm7FhcFuIwtUW3rFXTaHXJus6CAW5Eu
X-Received: by 2002:a17:90b:2588:b0:3ae:3b3d:c617 with SMTP id 98e67ed59e1d1-3b12d54a316mr2013096a91.29.1794190859708;
        Sun, 08 Nov 2026 18:20:59 -0800 (PST)
X-Received: by 2002:a17:90b:2588:b0:3ae:3b3d:c617 with SMTP id 98e67ed59e1d1-3b12d54a316mr2013087a91.29.1794190859258;
        Sun, 08 Nov 2026 18:20:59 -0800 (PST)
Received: from [10.239.96.176] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b1032b8c55sm4961050a91.2.2026.11.08.18.20.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Nov 2026 18:20:58 -0800 (PST)
Message-ID: <f5a3fbf4-a7fe-429a-89d2-7334a2375da4@oss.qualcomm.com>
Date: Mon, 9 Nov 2026 10:20:54 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v24 11/15] media: qcom: camss: tpg: Add support for v2.4.0
 TPG
To: bod@kernel.org, sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org,
        conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org,
        neil.armstrong@linaro.org, olteanv@gmail.com
References: <20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com>
 <20261102-kaanapali-camss-v24-11-d6b8f3f6f66f@oss.qualcomm.com>
 <sashiko-outbox-193294@kernel.org>
 <179406416444.650304.12581893664974319470.b4-reply@b4>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <179406416444.650304.12581893664974319470.b4-reply@b4>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA5MDAwOSBTYWx0ZWRfX9OgUSjBw8O21
 JNmIJCS40ThYtLX9DbLG8Hpz4bCAnc86xXBESo6YmMwV9b0PEDGDJaBvrbPx1cx/LalUZ3YM9co
 20VpgOsluRD4m3uQwXUViu6wMXEggyo=
X-Proofpoint-GUID: 2l8nHDzl9KQvKOsfOqvus67vOO_p83QZ
X-Authority-Analysis: v=2.4 cv=FrKQbGrq c=1 sm=1 tr=0 ts=6af12e0c cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=c92rfblmAAAA:8 a=EUspDBNiAAAA:8 a=VNQ3AZqY8Cfn8RaTT-QA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
 a=GvGzcOZaWPEFPQC_NcjD:22
X-Proofpoint-ORIG-GUID: 2l8nHDzl9KQvKOsfOqvus67vOO_p83QZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA5MDAwOSBTYWx0ZWRfX0xQRkz1LPlJE
 XRhC6cBk5qSDehH0Q8she+FochQdnz5ycuMoXxqQGgVhkDotTCwY9L20tjrayQe2xGrieXPPlXs
 0CRhvvCHC2IH1gHgjHkLYgVPHUae9tO/cZ2Kn/VdSd6/zObIwng7S5TJ1awREtJ16u6wIIFH9NF
 /NwJx5O4skd3Wn812sWf7TZ3eVTX1F30ptSKc9flr6hcUnUnr6mI6GNSm/hCqItgCubiB94Oa03
 gRWK3E7nLdsk+pcaYDMLJZe51ePdGGWBiavaVipk7rUjMEBs9JefeF6vBJ0fwzwN6DJ7moNytLA
 q9JtlIQ0aVE3/CkJFEesr/lShXaTX9770UjSG3kfpTmbnt5A+uUfVbXiwoJXzgTUH4XfvlZNYoU
 QdUNXWBVapHg0X3XmY3uTJ+m54ac0emfJlox/XMDrf1xM4kFNTlJAZAGi0ASZ5OLhVMaAJyCflu
 UTbapi5Jn5sT9PZco9A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-09_01,2026-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 spamscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611090009
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_182101_491214_4114D213 
X-CRM114-Status: GOOD (  18.67  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTEvNy8yMDI2IDExOjA5IFBNLCBib2RAa2VybmVsLm9yZyB3cm90ZToKPiBPbiAyMDI2LTEx
LTAyIDEwOjUyICswMDAwLCBzYXNoaWtvLWJvdEBrZXJuZWwub3JnIHdyb3RlOgo+PiBUaGFuayB5
b3UgZm9yIHlvdXIgY29udHJpYnV0aW9uISBTYXNoaWtvIEFJIHJldmlldyBmb3VuZCAxIHBvdGVu
dGlhbCBpc3N1ZShzKSB0byBjb25zaWRlcjoKPj4gLSBbTWVkaXVtXSBtZWRpYTogcWNvbTogY2Ft
c3M6IHVuaW5pdGlhbGl6ZWQgaHdfdmVyc2lvbiBjaGVjayBpbiB0cGdfcmVzZXQoKQo+PiAtLQo+
Pgo+PiBjb21taXQgZWExOGQzOWU1MTQ0Y2ExZThkNjI4YWE1YWI3MDhlODQ5ODNlMTBhMwo+PiBB
dXRob3I6IEhhbmd4aWFuZyBNYSA8aGFuZ3hpYW5nLm1hQG9zcy5xdWFsY29tbS5jb20+Cj4+Cj4+
IG1lZGlhOiBxY29tOiBjYW1zczogdHBnOiBBZGQgc3VwcG9ydCBmb3IgdjIuNC4wIFRQRwo+Pgo+
PiBUaGlzIGNvbW1pdCBhZGRzIHN1cHBvcnQgZm9yIFRQRyBoYXJkd2FyZSB2ZXJzaW9uIDIuNC4w
IG9uIEthYW5hcGFsaSwKPj4gY29udHJvbGxpbmcgdGVzdC1lbmFibGUgYW5kIGhhcmR3YXJlIHJl
c2V0IHZpYSB0aGUgVFBHX0NUUkxfQ01EIHJlZ2lzdGVyIGFuZAo+PiByb3V0aW5nIHRoZSBUUEcg
b3V0cHV0IGludG8gQ1NJRCAxMDgwIFJYIHRocm91Z2ggdGhlIENTSTIgVFBHIG11eC4KPj4KPj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdHBn
LWdlbjEuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy10cGctZ2Vu
MS5jCj4+PiBpbmRleCBkMjlkZTVmOTNjMThlLi5jYWJiYjI2MzhjZjM4IDEwMDY0NAo+Pj4gLS0t
IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLXRwZy1nZW4xLmMKPj4+
ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy10cGctZ2VuMS5j
Cj4+Cj4+IFsgLi4uIF0KPj4KPj4+IEBAIC0xNjQsMTggKzE2NywyNiBAQCBzdGF0aWMgaW50IHRw
Z19zdHJlYW1fb24oc3RydWN0IHRwZ19kZXZpY2UgKnRwZykKPj4KPj4gWyAuLi4gXQo+Pgo+Pj4g
ICBzdGF0aWMgaW50IHRwZ19yZXNldChzdHJ1Y3QgdHBnX2RldmljZSAqdHBnKQo+Pj4gICB7Cj4+
PiAtCXdyaXRlbCgwLCB0cGctPmJhc2UgKyBUUEdfQ1RSTCk7Cj4+PiAtCXdyaXRlbCgxLCB0cGct
PmJhc2UgKyBUUEdfQ0xFQVIpOwo+Pj4gKwlpZiAodHBnLT5od192ZXJzaW9uIDwgVFBHX0hXX1ZF
Ul8yXzRfMCkKPj4+ICsJCXdyaXRlbCgwLCB0cGctPmJhc2UgKyBUUEdfQ1RSTCk7Cj4+Cj4+IFtT
ZXZlcml0eTogTWVkaXVtXQo+PiBBcyByZXBvcnRlZCBieSBTYXNoaWtvIG9uIHYxNyBbMV0sIGlz
IHRwZy0+aHdfdmVyc2lvbiBpbml0aWFsaXplZCB3aGVuCj4+IHRwZ19yZXNldCgpIGlzIGNhbGxl
ZCBmb3IgdGhlIGZpcnN0IHRpbWUgZnJvbSB0cGdfc2V0X3Bvd2VyKCk/Cj4+Cj4+IEluIGRyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy10cGcuYywgdHBnX3NldF9wb3dlcigp
IGNhbGxzCj4+IHJlc2V0KCkgYmVmb3JlIGh3X3ZlcnNpb24oKSBwb3B1bGF0ZXMgdHBnLT5od192
ZXJzaW9uIGZyb20gdGhlCj4+IFRQR19IV19WRVJTSU9OIHJlZ2lzdGVyOgo+Pgo+PiBkcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdHBnLmM6dHBnX3NldF9wb3dlcigpIHsK
Pj4gCS4uLgo+PiAJCXRwZy0+cmVzLT5od19vcHMtPnJlc2V0KHRwZyk7Cj4+Cj4+IAkJdHBnLT5y
ZXMtPmh3X29wcy0+aHdfdmVyc2lvbih0cGcpOwo+PiAJLi4uCj4+IH0KPj4KPj4gT24gdGhlIGZp
cnN0IHBvd2VyLW9uIGFmdGVyIHByb2JlLCB0cGctPmh3X3ZlcnNpb24gaXMgc3RpbGwgMCwgc28K
Pj4gdHBnLT5od192ZXJzaW9uIDwgVFBHX0hXX1ZFUl8yXzRfMCBldmFsdWF0ZXMgdG8gdHJ1ZSBh
bmQgdHBnX3Jlc2V0KCkgd3JpdGVzCj4+IDAgdG8gVFBHX0NUUkwgZXZlbiBvbiB2Mi40LjAgaGFy
ZHdhcmUuIFNob3VsZCB0cGdfc2V0X3Bvd2VyKCkgY2FsbAo+PiBod192ZXJzaW9uKHRwZykgYmVm
b3JlIHJlc2V0KHRwZyksIG9yIHNob3VsZCB0cGdfcmVzZXQoKSByZWFkIHRoZSB2ZXJzaW9uIGlm
Cj4+IG5lZWRlZD8KPiAKPiBIYW5neGlhbmcgY2FuIHlvdSBoYXZlIGEgbG9vayBhdCB0aGlzLCBz
ZWVtcyBjcmVkaWJsZSB0byBtZS4KPiAgIAo+PiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
ci8yMDI2MDkyOTA2MTI0OC5FMDM1QzFGMDAwRkZAc210cC5rZXJuZWwub3JnCj4+Cj4+IC0tIAo+
PiBTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAy
NjExMDIta2FhbmFwYWxpLWNhbXNzLXYyNC0wLWQ2YjhmM2Y2ZjY2ZkBvc3MucXVhbGNvbW0uY29t
P3BhcnQ9MTEKPj4KPiAKSGkgQnJ5YW4sIFlvdSdyZSByaWdodC4gSSBoYWQgcHJldmlvdXNseSBh
cmd1ZWQgdGhhdCB0aGUgVFBHX0hXX1ZFUlNJT04gCnJlZ2lzdGVyIGFsd2F5cyByZXNldHMgdG8g
MHgyMDA0MDAwMCwgYnV0IHRoYXQgZG9lc24ndCBoZWxwIGhlcmUuIAp0cGctPmh3X3ZlcnNpb24g
aXMgb25seSBwb3B1bGF0ZWQgYnkgaHdfdmVyc2lvbigpLCB3aGljaCB0cGdfc2V0X3Bvd2VyKCkg
CmNhbGxzIGFmdGVyIHJlc2V0KCkuIFNvIG9uIHRoZSBmaXJzdCBwb3dlci1vbiBhZnRlciBwcm9i
ZSwgdHBnX3Jlc2V0KCkgCnN0aWxsIHNlZXMgaHdfdmVyc2lvbiA9PSAwIGFuZCB0YWtlcyB0aGUg
bGVnYWN5IHBhdGguCgpUaGlzIHdlbnQgdW5ub3RpY2VkIGluIG15IGxvY2FsIGFuZCBFMkUgdGVz
dGluZyBiZWNhdXNlIHRoZSBleHRyYSB3cml0ZSAKdG8gVFBHX0NUUkwgaGFwcGVucyB0byBiZSBo
YXJtbGVzcyBvbiB2Mi40LjAsIGJ1dCB0aGUgbG9naWMgaXMgd3JvbmcgCnJlZ2FyZGxlc3MuCgot
LS0KQmVzdCBSZWdhcmRzLApIYW5neGlhbmcKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
