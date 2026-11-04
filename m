Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD89606A329
	for <linux-phy@archiver.kernel.org>; Wed,  4 Nov 2026 22:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jPzcJfyn;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Yiw/JkgY;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=d5L7orO4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=g5DjVQtHTEyZ4Qoe1PowB2RndBFK8prx01jqRbPbI0U=; b=jPzcJfynegiC0HyIa7k2J+TIwO
	Wqtdv7lT+DW/G1I8yzXS+CgsVokdFnmij18L+42CL/dJL/6whbNQrRAvhDbpDOGZYxLdv0WV4Qaj6
	3V1t+UCTSnSrkh2XA7dYqwlbA10VWecIem31u46xY0DNvIKYCJnv/BeQbrfvqegrWgrtY85jeHTVZ
	7m+vsEdKyZoUhokf7NO3RsirqASXXkEuJY8rlyeZamcfgkNLxwryCh4O09kjnjkE+ECHuB6pImrE0
	aRZ5DYQFuwYmKdTmY5q/3TT26KzjGrnZCm2veQSpRgGobAsFQtmckigKsdcpuQofiyHvP/D0nUTB5
	FbUFXVHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOjla-00000007BOr-2K3n;
	Wed, 04 Nov 2026 22:47:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOjlX-00000007BOW-3BRL
	for linux-phy@lists.infradead.org;
	Wed, 04 Nov 2026 22:47:37 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A4LrRCx3208829
	for <linux-phy@lists.infradead.org>; Wed, 4 Nov 2026 22:47:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B9JOD6Zk4V3P6OicBg4lY0cN+dvX1jzJBdo/RTj2Z2c=; b=Yiw/JkgYgIQ0UOQv
	PbCUvdZ9qLdQNt2QLW5Xx99mMZdWRwdLD1Z2JCv2FtKhTAqxXRq+YaWkzrM4itgk
	IajfD3mSArjtdWow81+ojjRdFKsTQsNf7tAEuDuRJJo/YVgrRLqCcx1ara2FmRM9
	FDJa9EpNvAAutDh8kzGRlBonzwErGk0cBqrr3qo/IDkOws3OeTUPPVXRmWaenWk/
	z3meMW7X3RDe8R7nJ3k8//Y6OyuhBpnkdpus7k+TaGdIb3bfqXFdumjAhKjRF8N3
	G9FJI161SBYSJauK3fi6RjuXWLvy+ZJmIS0GALXp6LFaV2NAjJHfJMuLxNtdQgTI
	vPOzrw==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hr6bj20cr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 22:47:35 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-30c0d568830so2571366eec.1
        for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 14:47:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793832454; x=1794437254; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=B9JOD6Zk4V3P6OicBg4lY0cN+dvX1jzJBdo/RTj2Z2c=;
        b=d5L7orO4aSD69plDg/v59EOTcy5oysLRWMq35LjzFztEdilN9t1GrPNRJMPUzvuNtw
         QTcyVFAEz5bKJ8XqKNiErKkyD1jOAAv01w7GDKHjE7XNsHTe/muqNomcpxUCKTnLZK2j
         d9CCTuCvlLHF9LJLbYiv2uZeGIgmNCeXDmr6/KTA/rMqm5FLmM6ita+G35IgrZVNpcfq
         xAeoQFkoqwdq9/yQLglkb92H/AcKrj2wMUC0nxK0mki/qrqopZFmRcRw4M4wnRgnKlib
         EwJxu+2SRAzsxyg6s2OBV3+XUKGky3jWqxfG/ni9KyZfOMkwgGsNs4isEkQmYwhONoz9
         Xk9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793832454; x=1794437254;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=B9JOD6Zk4V3P6OicBg4lY0cN+dvX1jzJBdo/RTj2Z2c=;
        b=kYXS7NqtufoBGqtzNSCtYRgY5kV/X/rcZVmN2b7MiH9GvrH2ETlsIXQZFZtiTRBA+W
         pPU22fA9rKmzCF6gZG7kkDfDK9j0m3M17FaKc8Zbo7Mjc0GXGi7ediwfAjp1Qs7cvvq7
         nZ19PsTtIH685XXv0VLUmRmkuyCyiTJcTXXPs+piYyBRxUBhSZGkBQoy2r7teHjk5qDM
         MPUFuXEOPSBktNiKMviQAcRWXjy6IG+4+oWZbpUaGnWqI9iOsufLHtICSiHqHm5wP0Vi
         g93IeXwsqdODUtNX+BY1loMGUu8X4ofwSomU9nEnYE77C98RdSFNOKf6049SJd4jxzZc
         Ja3Q==
X-Forwarded-Encrypted: i=1; AKwUvBzmXTT+mM086qwPtqtngzUOIgLD0gnJb5VfmVsF6WkweD3/GaalaGundR4QVvFBB1qSfjkDNz3nUaU=@lists.infradead.org
X-Gm-Message-State: APuU4Z9UA0RZunSwkSXX9r8rimq11G4AfnL59kMLHt2abrJimxWr+UeA
	G/bIkhMmy8uJA4VPYc9FjcK4ov5KOm7ZNLo0QlLGSGbBU3qhCyjw6YUS2iXwND42qWnxH3XCYiE
	5In3KTmhqC1X+SbpQ3TDFz9Th/yQn/frhbBdvb6YUQptJzOnXsj4R/q6vNLY7XEon+z7A
X-Gm-Gg: AYBFou2XSORQpe1NPTUH1OlMsiHsaCniuMYF5jeO4QfNHBKRXLVhrb3fI78zclmeAst
	djqUaTtCkXMVRqF5+1NnSYLSqQZRwnqKsyyjBFgYb9KeRytEBkHCKySGHDg2nbw8meZY+jlhy7s
	LWVJcOtE+/2FVcZ9CuPK53fUT2uXQkEySatAF3bw8uOhTHF6+IiMajzlvP9FGVNosS+eeU1eK09
	TNAxCxVvwajaKlpLPwXDHvyeRmbRUUZSzz9A/yaGo+IJugUYKhbOTXE7eVwfUFsEAjw/lpf4OZK
	1WGuYvaW/U4pcRd9nI2G8MHp0xS5rAaqgStXf9UNbB7woUf7Xvo8+yaBLsvq1vB618V49a2RF64
	IPt8lZFALs4Qodt9oBOD2k0NZYwC2gVb2pgnyehYthxZ0ocKj94GThzzGP8xJQ+OTztTByGPwjy
	9y6uWV6evLePQI6un0IFExm9UslG97
X-Received: by 2002:a05:7301:e105:b0:36a:15cb:30bf with SMTP id 5a478bee46e88-36a42345851mr24443568eec.13.1793832454138;
        Wed, 04 Nov 2026 14:47:34 -0800 (PST)
X-Received: by 2002:a05:7301:e105:b0:36a:15cb:30bf with SMTP id 5a478bee46e88-36a42345851mr24443521eec.13.1793832453392;
        Wed, 04 Nov 2026 14:47:33 -0800 (PST)
Received: from [10.71.181.181] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36dd85a5464sm2052690eec.4.2026.11.04.14.47.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2026 14:47:33 -0800 (PST)
Message-ID: <d21c5d8d-6dc2-465b-941a-e551a2a46dce@oss.qualcomm.com>
Date: Wed, 4 Nov 2026 14:47:32 -0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: qcom: Add common qcom,csi2-phy
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20261103214105.3605181-1-anusha.nandi@oss.qualcomm.com>
 <Qxjw6nqG8e0t_jwSz4HC1rrgZrHc2wUez5PQn28lbXlvMq_V4_RSjlzhsFu_8OgE-pmS_GkXKICn0ObgJWomzg==@protonmail.internalid>
 <20261103214105.3605181-2-anusha.nandi@oss.qualcomm.com>
 <803d16ba-49c9-404c-8973-e4d4dc02b1e3@kernel.org>
Content-Language: en-US
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
In-Reply-To: <803d16ba-49c9-404c-8973-e4d4dc02b1e3@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA0MDA4OSBTYWx0ZWRfX9Jt8BRynx3eI
 H8N2K1oI+yGlVgv75QhpKNE8jv4VXHhEJZviEn8jUG3Bt2MMfI8z09de5baflq5UIzxBEpm7a+K
 OJY19AJqZCyPGXUDc2A4/b7zhaPZ7FYQoiEbz4P+upIKPKhOk3dOOm3V/h2bKwoJii6ph1qVnDM
 tbNdn2WSEGVM0ZVmPTLFPvH+i6Y+2WS4e2txN23yFNq3Kh/3lFO6Y3Hag4JamurdeHApqp2/jb0
 pqhaWVWrFxeKD2tFi043Hr8jD7GG0UNCCwLqXj1NXVWm1m1gN9CQ00j6YsQADh6KSKmss6NuYo/
 b0EeWQ5oZkx1X0DzVcwDLd0XphD9MbtTDuMBRtwqQysRXQctwgoi6fo2xXzypgJiheIqAtVAldF
 c5ZxhTTK6oZlKaIwJxaOK477zRBmEvCvisqrCDRz3AY97qSxZ/qdjjJpNnc02bJc0z4/1+2cLKF
 GCyskUMpsNtF217vDMg==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA0MDA4OSBTYWx0ZWRfXxkDz36a61Duw
 FMFUvg38XBJXXbaeGHhLELyoudI56M1G2y2f2ozTNhxLFRQGgorhYRzDLj++S6nQzSdroY16VHv
 TyEPuVs3iSapdP9b827fE06alJItPRg=
X-Proofpoint-ORIG-GUID: aqdRd9dp67ZeenOVgP_o3j6gB-_4diBc
X-Proofpoint-GUID: aqdRd9dp67ZeenOVgP_o3j6gB-_4diBc
X-Authority-Analysis: v=2.4 cv=N/u8hG9B c=1 sm=1 tr=0 ts=6aebb607 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=YckT5oapyQZYSsRhpqkA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=PxkB5W3o20Ba91AHUih5:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-04_05,2026-11-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0
 malwarescore=0 priorityscore=1501 phishscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611040089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_144735_906085_D1786C2C 
X-CRM114-Status: GOOD (  22.37  )
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
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

CgpPbiAxMS80LzIwMjYgMzoyOSBBTSwgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPiBPbiAwMy8x
MS8yMDI2IDIxOjQxLCBBbnVzaGEgQXJ1biBOYW5kaSB3cm90ZToKPj4gU0E4Nzc1UCwgUUNTODMw
MCBhbmQgU0M3MjgwIENTSTIgUEhZcyBhcmUgYml0LWZvci1iaXQgaWRlbnRpY2FsIGluCj4+IGRl
dmljZXRyZWUgc2hhcGUgKHBvcnRzLCBidXMtdHlwZSwgZGF0YS1sYW5lcywgb3BlcmF0aW5nLXBv
aW50cy12MiwKPj4gY2xvY2tzLCBzaW5nbGUgInRvcCIgcG93ZXItZG9tYWluLCB2ZGRhLXBoeS92
ZGRhLXBsbCBzdXBwbGllcykuCj4+Cj4+IERlc2NyaWJlIGFsbCB0aHJlZSB3aXRoIGEgc2luZ2xl
IHFjb20sY3NpMi1waHkueWFtbCBhbmQgYSBjb21wYXRpYmxlCj4+IG9uZU9mLCByYXRoZXIgdGhh
biBvbmUgc3RhbmRhbG9uZSBzY2hlbWEgcGVyIFNvQy4gUUNTODMwMCBpcyBmdXJ0aGVyCj4+IHJl
cXVpcmVkIHRvIGJlIHBhaXJlZCB3aXRoIGEgcWNvbSxzYTg3NzVwLWNzaTItcGh5IGZhbGxiYWNr
Cj4+IGNvbXBhdGlibGUsIHRoZSBzYW1lIHdheSBvdGhlciBRdWFsY29tbSBiaW5kaW5ncyBleHBy
ZXNzIGZ1bGwKPj4gaGFyZHdhcmUgY29tcGF0aWJpbGl0eSBiZXR3ZWVuIHR3byBTb0NzIChzZWUg
cWNvbSxxdXNiMi1waHkueWFtbCk7Cj4+IHRoaXMgbGV0cyB0aGUgZHJpdmVyIGJpbmQgUUNTODMw
MCBub2RlcyB2aWEgaXRzIHFjb20sc2E4Nzc1cC1jc2kyLXBoeQo+PiBtYXRjaCBlbnRyeSByYXRo
ZXIgdGhhbiBjYXJyeWluZyBhIGR1cGxpY2F0ZSBvbmUuCj4+Cj4+IHFjb20seDFlODAxMDAtY3Np
Mi1waHkueWFtbCBpcyBhIHNlcGFyYXRlIFBIWSB3aXRoIGEgZGlmZmVyZW50IHNoYXBlCj4+ICgz
IGNsb2NrcywgMyBwb3dlci1kb21haW5zLCBkaWZmZXJlbnQgc3VwcGx5IG5hbWVzLCBEUEhZIHNw
bGl0LW1vZGUKPj4gc3VwcG9ydCkgYW5kIGlzIGxlZnQgdW50b3VjaGVkLgo+Pgo+PiBSZXZpZXdl
ZC1ieTogSmlnYXJrdW1hciBaYWxhIDxqaWdhcmt1bWFyLnphbGFAb3NzLnF1YWxjb21tLmNvbT4K
Pj4gU2lnbmVkLW9mZi1ieTogQW51c2hhIEFydW4gTmFuZGkgPGFudXNoYS5uYW5kaUBvc3MucXVh
bGNvbW0uY29tPgo+PiAtLS0KPj4gwqAgLi4uL2JpbmRpbmdzL3BoeS9xY29tLGNzaTItcGh5Lnlh
bWzCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDE3NiArKysrKysrKysrKysrKysrKysKPj4gwqAgMSBm
aWxlIGNoYW5nZWQsIDE3NiBpbnNlcnRpb25zKCspCj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sY3NpMi0KPj4gcGh5Lnlh
bWwKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
aHkvcWNvbSxjc2kyLXBoeS55YW1sCj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9xY29tLGNzaTItcGh5LnlhbWwKPj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4gaW5k
ZXggMDAwMDAwMDAwMDAwLi41ZDI1NTQ3NTI4YmQKPj4gLS0tIC9kZXYvbnVsbAo+PiArKysgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sY3NpMi1waHkueWFtbAo+
PiBAQCAtMCwwICsxLDE3NiBAQAo+PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0y
LjAgT1IgQlNELTItQ2xhdXNlKQo+PiArIyBDb3B5cmlnaHQgKGMpIDIwMjYgUXVhbGNvbW0gSW5u
b3ZhdGlvbiBDZW50ZXIsIEluYy4gQWxsIHJpZ2h0cwo+PiByZXNlcnZlZC4KPj4gKyVZQU1MIDEu
Mgo+PiArLS0tCj4+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3BoeS9xY29t
LGNzaTItcGh5LnlhbWwjCj4+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1z
Y2hlbWFzL2NvcmUueWFtbCMKPj4gKwo+PiArdGl0bGU6IFF1YWxjb21tIENTSTIgUEhZCj4+ICsK
Pj4gK21haW50YWluZXJzOgo+PiArwqAgLSBBbnVzaGEgQXJ1biBOYW5kaSA8YW51c2hhLm5hbmRp
QG9zcy5xdWFsY29tbS5jb20+Cj4+ICsKPj4gK2Rlc2NyaXB0aW9uOgo+PiArwqAgUXVhbGNvbW0g
TUlQSSBDU0kyIEQtUEhZLiBDb25uZWN0cyBNSVBJIENTSTIgc2Vuc29ycyB0byBRdWFsY29tbSdz
Cj4+IENhbWVyYQo+PiArwqAgQ1NJIERlY29kZXIuCj4+ICsKPj4gK3Byb3BlcnRpZXM6Cj4+ICvC
oCBjb21wYXRpYmxlOgo+PiArwqDCoMKgIG9uZU9mOgo+PiArwqDCoMKgwqDCoCAtIGVudW06Cj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqAgLSBxY29tLHNhODc3NXAtY3NpMi1waHkKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoCAtIHFjb20sc2M3MjgwLWNzaTItcGh5Cj4+ICvCoMKgwqDCoMKgIC0gaXRlbXM6
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgLSBlbnVtOgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgLSBxY29tLHFjczgzMDAtY3NpMi1waHkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoCAtIGNv
bnN0OiBxY29tLHNhODc3NXAtY3NpMi1waHkKPj4gKwo+PiArwqAgcmVnOgo+PiArwqDCoMKgIG1h
eEl0ZW1zOiAxCj4+ICsKPj4gK8KgIGNsb2NrczoKPj4gK8KgwqDCoCBtYXhJdGVtczogMgo+PiAr
Cj4+ICvCoCBjbG9jay1uYW1lczoKPj4gK8KgwqDCoCBpdGVtczoKPj4gK8KgwqDCoMKgwqAgLSBj
b25zdDogY29yZQo+PiArwqDCoMKgwqDCoCAtIGNvbnN0OiB0aW1lcgo+PiArCj4+ICvCoCBpbnRl
cnJ1cHRzOgo+PiArwqDCoMKgIG1heEl0ZW1zOiAxCj4+ICsKPj4gK8KgIG9wZXJhdGluZy1wb2lu
dHMtdjI6IHRydWUKPj4gKwo+PiArwqAgb3BwLXRhYmxlOgo+PiArwqDCoMKgIHR5cGU6IG9iamVj
dAo+PiArCj4+ICvCoCBwb3dlci1kb21haW5zOgo+PiArwqDCoMKgIGl0ZW1zOgo+PiArwqDCoMKg
wqDCoCAtIGRlc2NyaXB0aW9uOiBUaXRhbiBUb3AgR0RTQyAtIFRpdGFuIElTUCBCbG9jaywgR2xv
YmFsCj4+IERpc3RyaWJ1dGVkIFN3aXRjaCBDb250cm9sbGVyLgo+PiArCj4+ICvCoCBwb3dlci1k
b21haW4tbmFtZXM6Cj4+ICvCoMKgwqAgaXRlbXM6Cj4+ICvCoMKgwqDCoMKgIC0gY29uc3Q6IHRv
cAo+PiArCj4+ICvCoCB2ZGRhLXBoeS1zdXBwbHk6Cj4+ICvCoMKgwqAgZGVzY3JpcHRpb246IFBo
YW5kbGUgdG8gUEhZIHN1cHBseS4KPj4gKwo+PiArwqAgdmRkYS1wbGwtc3VwcGx5Ogo+PiArwqDC
oMKgIGRlc2NyaXB0aW9uOiBQaGFuZGxlIHRvIFBMTCBzdXBwbHkuCj4gCj4gV2h5IGFyZSB3ZSBk
ZXBhcnRpbmcgZnJvbSB2ZGRhLTBwOS1zdXBwbHkgYW5kIHZkZGEtMXAyLXN1cHBseSA/Cj4gCj4g
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHgxZTgwMTAwLWNzaTIt
cGh5LnlhbWwKPiAKVGhlIDBwOSBhbmQgMXAyIHN1cHBseSBuYW1lcyBhcmUgZGVyaXZlZCBmcm9t
IHRoZSBjdXJyZW50IENTSVBIWQpoYXJkd2FyZSBwb3dlciByYWlsIG5hbWluZywgd2hpY2ggbWF5
IG5vdCByZW1haW4gY29uc2lzdGVudCBhY3Jvc3MKZnV0dXJlIHBsYXRmb3Jtcy4gVG8gbWFrZSB0
aGUgYmluZGluZyBtb3JlIGdlbmVyaWMgYW5kCmZ1bmN0aW9uLW9yaWVudGVkLCBJIHdpbGwgcmVu
YW1lIHRoZW0gdG8gdmRkYS1ocy1zdXBwbHkgYW5kCnZkZGEtbHAtc3VwcGx5LCB3aGljaCBiZXR0
ZXIgcmVwcmVzZW50IHRoZSBDU0lQSFkgcG93ZXIgcmVxdWlyZW1lbnRzLj4+ICsKPj4gK8KgIHBv
cnRzOgo+PiArwqDCoMKgICRyZWY6IC9zY2hlbWFzL2dyYXBoLnlhbWwjL3Byb3BlcnRpZXMvcG9y
dHMKPj4gKwo+PiArwqDCoMKgIHByb3BlcnRpZXM6Cj4+ICvCoMKgwqDCoMKgIHBvcnRAMDoKPj4g
K8KgwqDCoMKgwqDCoMKgICRyZWY6IC9zY2hlbWFzL2dyYXBoLnlhbWwjLyRkZWZzL3BvcnQtYmFz
ZQo+PiArwqDCoMKgwqDCoMKgwqAgZGVzY3JpcHRpb246Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAg
U2Vuc29yIGlucHV0LiBBIHNpbmdsZSBzZW5zb3IgaXMgZGVzY3JpYmVkIGJ5IGEgc2luZ2xlCj4+
IGVuZHBvaW50Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgd2l0aCBvbmUgdG8gZm91ciBkYXRhIGxh
bmVzLCBudW1iZXJlZCAxLTQuIFRoZSBjbG9jayBsYW5lIGlzCj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqAgcG9zaXRpb24gMC4KPiAKPiBTaW5jZSB5b3UndmUgY2xvbmVkIGFuZCBvd25lZCB0aGUgeWFt
bCAtIHlvdSd2ZSBhbHNvIGRyb3BwZWQgdGhlCj4gZGVzY3JpcHRpb24gb2YgRFBIWSBzcGxpdCBt
b2RlLgo+IApUaGFuayB5b3UgZm9yIGhpZ2hsaWdodGluZy4gSSB3aWxsIGFkZCB0aGUgc3VwcG9y
dCBmb3IgaXQuID4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgIHVuZXZhbHVhdGVkUHJvcGVydGllczog
ZmFsc2UKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqAgcHJvcGVydGllczoKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoCBlbmRwb2ludDoKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJHJlZjogL3NjaGVt
YXMvbWVkaWEvdmlkZW8taW50ZXJmYWNlcy55YW1sIwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB1bmV2YWx1YXRlZFByb3BlcnRpZXM6IGZhbHNlCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHByb3BlcnRpZXM6Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBidXMtdHlwZToKPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnVtOgo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAtIDEgIyBNRURJQV9CVVNfVFlQRV9DU0kyX0NQSFkKPj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSA0ICMgTUVESUFfQlVTX1RZUEVfQ1NJ
Ml9EUEhZCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGVmYXVsdDogNAo+PiAr
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkYXRhLWxhbmVzOgo+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1pbkl0ZW1zOiAxCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgbWF4SXRlbXM6IDQKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBpdGVtczoKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbWluaW11bTog
MQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtYXhpbXVtOiA0Cj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGVzY3JpcHRpb246Cj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERhdGEgbGFuZSBwb3NpdGlvbnMgZm9sbG93aW5nIHRo
aXMgZW5kcG9pbnQncyBjbG9jawo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBsYW5lLiBQb3NpdGlvbnMgYXJlIGEgcGVyLXBvcnQgbG9naWNhbCBudW1iZXJpbmcsIG5vdAo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwYWNrYWdlIHBhZCBvciBiYWxs
IHBvc2l0aW9ucy4KPj4gKwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXF1aXJlZDoKPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gZGF0YS1sYW5lcwo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgLSByZW1vdGUtZW5kcG9pbnQKPiAKPiBBbmQgdGhlbiB5b3UndmUgZHJv
cHBlZCB0aGUgRFBIWSBzcGxpdCBtb2RlIGRlZmludGlvbgo+IAo+IE5BSwo+IAo+IFBsZWFzZSBl
aXRoZXIgY2xvbmUgYW5kIG93biB0aGUgd2hvbGUgRFBIWSBzcGxpdC1tb2RlIGNpcmN1cyBvciBq
dXN0Cj4gbW9kaWZ5IHRoZSBleGlzdGluZyBkZWZpbml0aW9uIHRvIGluY2x1ZGUgeW91ciBuZXcg
c3R1ZmYuCj4gCldpbGwgYmUgbW9kaWZpZWQgYWxvbmcgd2l0aCBvdGhlciBjb21tZW50cyBmb3Ig
djIgdmVyc2lvbiwgc2VuZGluZyBpbgpzaG9ydGx5Lj4+ICsKPj4gK8KgwqDCoMKgwqAgcG9ydEAx
Ogo+PiArwqDCoMKgwqDCoMKgwqAgJHJlZjogL3NjaGVtYXMvZ3JhcGgueWFtbCMvcHJvcGVydGll
cy9wb3J0Cj4+ICvCoMKgwqDCoMKgwqDCoCBkZXNjcmlwdGlvbjogT3V0cHV0IHRvIHRoZSBDQU1T
UyBDU0lEIGNvbnRyb2xsZXIuCj4+ICsKPj4gK8KgwqDCoCByZXF1aXJlZDoKPj4gK8KgwqDCoMKg
wqAgLSBwb3J0QDAKPj4gK8KgwqDCoMKgwqAgLSBwb3J0QDEKPj4gKwo+PiArcmVxdWlyZWQ6Cj4+
ICvCoCAtIGNvbXBhdGlibGUKPj4gK8KgIC0gcmVnCj4+ICvCoCAtIGNsb2Nrcwo+PiArwqAgLSBj
bG9jay1uYW1lcwo+PiArwqAgLSBpbnRlcnJ1cHRzCj4+ICvCoCAtIG9wZXJhdGluZy1wb2ludHMt
djIKPj4gK8KgIC0gcG93ZXItZG9tYWlucwo+PiArwqAgLSBwb3dlci1kb21haW4tbmFtZXMKPj4g
K8KgIC0gdmRkYS1waHktc3VwcGx5Cj4+ICvCoCAtIHZkZGEtcGxsLXN1cHBseQo+PiArwqAgLSBw
b3J0cwo+PiArCj4+ICthZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKPj4gKwo+PiArZXhhbXBs
ZXM6Cj4+ICvCoCAtIHwKPj4gK8KgwqDCoCAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svcWNv
bSxzYTg3NzVwLWNhbWNjLmg+Cj4+ICvCoMKgwqAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVy
cnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KPj4gK8KgwqDCoCAjaW5jbHVkZSA8ZHQtYmluZGlu
Z3MvbWVkaWEvdmlkZW8taW50ZXJmYWNlcy5oPgo+PiArCj4+ICvCoMKgwqAgcGh5QGFjOWMwMDAg
ewo+PiArwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJxY29tLHNhODc3NXAtY3NpMi1waHki
Owo+PiArwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4MGFjOWMwMDAgMHgyMDAwPjsKPj4gKwo+PiAr
wqDCoMKgwqDCoMKgwqAgY2xvY2tzID0gPCZjYW1jYyBDQU1fQ0NfQ1NJUEhZMF9DTEs+LAo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZjYW1jYyBDQU1fQ0NfQ1NJMFBIWVRJ
TUVSX0NMSz47Cj4+ICvCoMKgwqDCoMKgwqDCoCBjbG9jay1uYW1lcyA9ICJjb3JlIiwKPj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAidGltZXIiOwo+PiArCj4+
ICvCoMKgwqDCoMKgwqDCoCBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNDc3IElSUV9UWVBFX0VER0Vf
UklTSU5HPjsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwm
Y3NpcGh5X29wcF90YWJsZT47Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgIHBvd2VyLWRvbWFpbnMg
PSA8JmNhbWNjIENBTV9DQ19USVRBTl9UT1BfR0RTQz47Cj4+ICvCoMKgwqDCoMKgwqDCoCBwb3dl
ci1kb21haW4tbmFtZXMgPSAidG9wIjsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqAgdmRkYS1waHkt
c3VwcGx5ID0gPCZ2cmVnX2w0YT47Cj4+ICvCoMKgwqDCoMKgwqDCoCB2ZGRhLXBsbC1zdXBwbHkg
PSA8JnZyZWdfbDFjPjsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqAgcG9ydHMgewo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgI3NpemUtY2VsbHMgPSA8MD47Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcG9ydEAwIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MD47
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3NpcGh5MF9pbjogZW5kcG9pbnQg
ewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYnVzLXR5cGUgPSA8
TUVESUFfQlVTX1RZUEVfQ1NJMl9EUEhZPjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGRhdGEtbGFuZXMgPSA8MSAyIDMgND47Cj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZW1vdGUtZW5kcG9pbnQgPSA8JnNlbnNvcl9vdXQ+Owo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIH07Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcG9ydEAxIHsKPj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MT47Cj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgY3NpcGh5MF9vdXQ6IGVuZHBvaW50IHsKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlbW90ZS1lbmRwb2ludCA9IDwmY3NpZF9pbj47
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfTsKPj4gK8KgwqDCoMKgwqDCoMKgIH07Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKg
IGNzaXBoeV9vcHBfdGFibGU6IG9wcC10YWJsZSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGNvbXBhdGlibGUgPSAib3BlcmF0aW5nLXBvaW50cy12MiI7Cj4+ICsKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgb3BwLTMwMDAwMDAwMCB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgb3BwLWh6ID0gL2JpdHMvIDY0IDwzMDAwMDAwMDA+Owo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB9Owo+PiArwqDCoMKgwqDCoMKgwqAgfTsKPj4gK8KgwqDCoCB9Owo+PiAtLSAKPj4g
Mi4zNC4xCj4gCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
