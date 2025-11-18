Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E2F7CED603
	for <linux-phy@archiver.kernel.org>; Tue, 18 Nov 2025 11:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z03uSUgrxDJD22YIhWIcprdTIHe9rkIUWfXxQCUo/TA=; b=ZGXeqpAV9p/f4L
	cOHT35tnkNE4qehACyla3h2Gi8krASqN1ua8X7IXmE8/fxSbvk+jy4ONlnx7yq84AA8EAthHxQHVG
	HP9ESp27O6mEhZBEb/6efyzPCMXJxAi8A2qQsdtA1VN9mQimOdSq4zq1vX7+SizUd3kg9l9qQF/GL
	UE7rHgGqumVZErt1zta6TyHdNODGnrElFN4rXMX+qZO62NgUylhlXRi6J132OjjIMVnWGRnuzQKi3
	NB5WLF44BNje0iYk34iRXlZWmMr3Lt5nR2SNWdtS/Stw5nQL8/GaEnkFOzpNLwnxaKkaL2HFlC5uG
	HqSoTI+VcfDq9nqoFgAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLJRk-00000000IEa-0WpZ;
	Tue, 18 Nov 2025 11:00:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLJRi-00000000IE8-3L2H
	for linux-phy@lists.infradead.org;
	Tue, 18 Nov 2025 11:00:27 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AIA9xEn027649
	for <linux-phy@lists.infradead.org>; Tue, 18 Nov 2025 11:00:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gTsxQYU0ffTnQEHpFCJpJKdnmsCRGi8U4KpxJlM7LVw=; b=FEhEYaqiPai8DiLR
	PfCwkqNiLyRh1x5sAhATDuedATrIBa590flX7RQRCPiSqUg7LbQyeIFcDCwa6el2
	1BDZp18XUgJvLpzU4se/vVDCWeUFbzh0h7Q0emaTHJgiaJ7uvhO9yelPimAWQT3c
	fIwef8J+JA4AHcOmLvRNM0D+l+puNThMN5e1tlPag7VKkahTE+1Pen8CrPnoXuX0
	9ZWni/e/S2T49t8pPu94+k+pUjv7mjig/l2OANVupLBuzUDVHJPNLvZcHinihqAg
	SLv/7sjzueyoIdUIc4G3v4YM+FUDCktNWlIPbH2e1akIxDA/Wy68kv2MHKj6shoG
	MhyewQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag77t2u8t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Nov 2025 11:00:25 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88234e4a694so260754296d6.3
        for <linux-phy@lists.infradead.org>; Tue, 18 Nov 2025 03:00:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763463625; x=1764068425; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gTsxQYU0ffTnQEHpFCJpJKdnmsCRGi8U4KpxJlM7LVw=;
        b=AE2FoCcJ5USd253fMF91jFL206QZDcO6WvyuMWIziNOdfznr8MzjRdXwU0dYbOnfkf
         cO5eS9MHEKRvoQB++Uc6m01gWxkX7gM/JNwdHmEflouF2qXatC2bEWhIoNZg6auojTp3
         TJzXXcEZhnIwTPXJVjbndJfgx7QN/Fb0ONur5WM0RQ1d2owUTxvhoYf58UeNPopX48fj
         Yxq98NiHTCx7+55eZbYPtmeeUJA6K1N3cWDzD30lgrdudO3SlhiU/eItELSM/IsiXUm3
         dC15zx5CSLPSvNABADDuG9PeZhzQaWLunARFocjG8F2y627JxhrphCXafzgJ78atR3Nr
         CBIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763463625; x=1764068425;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gTsxQYU0ffTnQEHpFCJpJKdnmsCRGi8U4KpxJlM7LVw=;
        b=vc3PxxhMLHVGXE7AgL2eL8DbjSzDe/q2YK0DnkD1GmWsz7QnZdP6VcsZNJ+jV9CcAK
         jMa02V8x/DSDJ0QSb8aKF+76pnafvOYbBsQRdnolTXs68kQFdCGHuOb4758CgKnNNG+X
         S0PYvTOZyOUy5Bl2YqsqaKoaXZZ5uCjMWOtl8DjQd4PUnAwSO03JH7Wedjn+FZxkxUub
         CEogu0UQoZ7KJZFX1G2ViFjEdhbhpk4x9UXDR2N3LsAaAe5oFHJbfW/diVMwavstRvg4
         7YJwG2tjNhmFlEJOzgaZRyeWW9w68FDt2VHYe/8/1LjLBkssDlf2DgQNJGHaEPFF70vs
         uBsA==
X-Forwarded-Encrypted: i=1; AJvYcCWXg9MdgaWw2YzKD74RxX7tIhc96I5Gn1KosvmW/CtSDYAvLcuIeM2T4R+6diBcFGMW5vKAcfGRShY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwDvsa1dpllVAFrUC6kM3NTTnonLkoyG7ivRPA9UcrWGkbF13Nf
	0Bxg77teDgnjIzEybd5v2bVmi3hXt0SqUYQNO34styJNTY4x7NzMsrd+Ja6ncat9xKzPBDV8HGK
	mr7rUZSQZgTIPtpcTg33OkhZGRaGTqETCCq41N8Nvcwu8mTM+r5rikfOO4W1SpN5u8NpH
X-Gm-Gg: ASbGnctfvKjSoIIaVnw8KGifkq32iywko7vhwV/WXpPcJ5hy/cfr10UOX+eviozq79e
	C2ArE313aPQfYQD+QQCSV5excA1byraklwWmlsfrequ1KSUPm1dSTkPwLkWmlY97U+2cD0U/WzB
	GA5SmRp1sNUZN6zDNCJM1xMSqIFQl7ktgKOowiQrsuv60+Fj8HhYp/SHmiUNWQRssJXBEVq83/N
	C5j1+VDwKl/IwCjLYCYMEKeWaIy2UVfPLTg7pmb8SvVFypKWWYuRle50XFUy94cx59zC7K5dATq
	Ci2HeCyq1fZ5GGv3pR3uhYopx0XrNX9PLWs1igApLGfX7J9n6Ou0Qak3Oy9GE3xQ6ADW30EFmh+
	xll14T75RUdU0saVVgOYXoasHanP6f3zsFJCl6hP2OxgE9ObY1DRj40hSfiBlcB0NdhQ+JM21Vs
	aI7qpHaX3rm6r3
X-Received: by 2002:a05:6214:c8e:b0:880:9151:2dfe with SMTP id 6a1803df08f44-882926b17e0mr233080276d6.44.1763463624617;
        Tue, 18 Nov 2025 03:00:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHW4KWICCDmbUWd742eG4D3KGOvVg3m0HIRjn7FHnvhSapKLGDNSrWUMAAqfPJwSazupHDJdw==
X-Received: by 2002:a05:6214:c8e:b0:880:9151:2dfe with SMTP id 6a1803df08f44-882926b17e0mr233079526d6.44.1763463624164;
        Tue, 18 Nov 2025 03:00:24 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595909e6f99sm1915900e87.6.2025.11.18.03.00.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 03:00:23 -0800 (PST)
Date: Tue, 18 Nov 2025 13:00:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org,
        lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
        johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: Add PCIe3 and PCIe5 regulators
 for HAMAO-IOT-EVK board
Message-ID: <5z5sqc5q547f4tb5selh6xwtiinjrsz5xx7jlvm7nchjhso3q5@ajli73mmj5cl>
References: <20251112090316.936187-1-ziyue.zhang@oss.qualcomm.com>
 <20251112090316.936187-3-ziyue.zhang@oss.qualcomm.com>
 <rakvukrdsb3vpr4k22hgvbr2yc65me32uezwrqgn2573kblirt@7q7pgr3nkvso>
 <12bce4de-9491-4040-991b-529bc916983c@oss.qualcomm.com>
 <f04e005b-c527-4d60-a0bb-4611f9b34655@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f04e005b-c527-4d60-a0bb-4611f9b34655@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA4OCBTYWx0ZWRfX/Sn+81B9irYD
 ps1H48u7Yz3MeFN227oDNoWSZYYfJS9B83mrfakciAnu1j/Dxe5aAYDPNPKPTOVeVEY4Ryy6gz1
 3vLVQt8UeQApnS3VusLwbj6WgsV++t605MkiH9YMNoTExgbG9HjrZFFd8a/A6sz9q50EZc7dswa
 RY0VIyS5k9faIQXLc1v2bw/PXsesPG+ASZr9IGdcQYUNzfbjPILmHlP9D0BgZ480nKJuV06K2qz
 Khjnvken9Ec42GayEGrXFhzVkaDS3XlOh0Hc+h+6ILAJJMR84QsoypN4llrwOn2ynyAjLgB7iwy
 VdJvVedHNiXisNn5Ndn66lhuec3YwFhGk44Mouj6QyPQAuzjEjHLy1RnCYsdoSwwnMcZjcQm+D8
 DYuySMy72Ane1iMXX0S6OPCRyJsmVg==
X-Authority-Analysis: v=2.4 cv=EPoLElZC c=1 sm=1 tr=0 ts=691c51c9 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Gsnuokm4xmw1NbURbDEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: bCRLaK53AXDxVJsUnrcY8xtnWdH4R7Z6
X-Proofpoint-GUID: bCRLaK53AXDxVJsUnrcY8xtnWdH4R7Z6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 phishscore=0 adultscore=0 spamscore=0 clxscore=1015
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_030026_845775_531231B1 
X-CRM114-Status: GOOD (  20.92  )
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

T24gVHVlLCBOb3YgMTgsIDIwMjUgYXQgMTE6MjM6NDNBTSArMDEwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBPbiAxMS8xOC8yNSAxMToxMSBBTSwgWml5dWUgWmhhbmcgd3JvdGU6Cj4gPiAKPiA+
IE9uIDExLzEzLzIwMjUgNToxNiBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiA+PiBPbiBX
ZWQsIE5vdiAxMiwgMjAyNSBhdCAwNTowMzoxNlBNICswODAwLCBaaXl1ZSBaaGFuZyB3cm90ZToK
PiA+Pj4gSEFNQU8gSW9UIEVWSyB1c2VzIFBDSWU1IHRvIGNvbm5lY3QgYW4gU0RYNjUgbW9kdWxl
IGZvciBXV0FOIGZ1bmN0aW9uYWxpdHkKPiA+Pj4gYW5kIFBDSWUzIHRvIGNvbm5lY3QgYSBTQVRB
IGNvbnRyb2xsZXIuIFRoZXNlIGludGVyZmFjZXMgcmVxdWlyZSBtdWx0aXBsZQo+ID4+PiB2b2x0
YWdlIHJhaWxzOiBQQ0llNSBuZWVkcyAzLjNWIHN1cHBsaWVkIGJ5IHZyZWdfd3dhbiwgd2hpbGUg
UENJZTMgcmVxdWlyZXMKPiA+Pj4gMTJWLCAzLjNWLCBhbmQgMy4zViBBVVggcmFpbHMsIGNvbnRy
b2xsZWQgdmlhIFBNSUMgR1BJT3MuCj4gPj4+Cj4gPj4+IEFkZCB0aGUgcmVxdWlyZWQgZml4ZWQg
cmVndWxhdG9ycyB3aXRoIHJlbGF0ZWQgcGluIGNvbmZpZ3VyYXRpb24sIGFuZAo+ID4+PiBjb25u
ZWN0IHRoZW0gdG8gdGhlIFBDSWUzIGFuZCBQQ0llNSBwb3J0cyB0byBlbnN1cmUgcHJvcGVyIHBv
d2VyIGZvciB0aGUKPiA+Pj4gU0RYNjUgbW9kdWxlIGFuZCBTQVRBIGNvbnRyb2xsZXIuCj4gPj4+
Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IFppeXVlIFpoYW5nIDx6aXl1ZS56aGFuZ0Bvc3MucXVhbGNv
bW0uY29tPgo+ID4+PiBSZXZpZXdlZC1ieTogS3Jpc2huYSBDaGFpdGFueWEgQ2h1bmRydSA8a3Jp
c2huYS5jaHVuZHJ1QG9zcy5xdWFsY29tbS5jb20+Cj4gPj4+IC0tLQo+ID4+PiDCoCBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3Fjb20vaGFtb2EtaW90LWV2ay5kdHMgfCA4MyArKysrKysrKysrKysrKysr
KysrKysrCj4gPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA4MyBpbnNlcnRpb25zKCspCj4gPj4+Cj4g
Pj4+ICsmcG1jODM4MF8zX2dwaW9zIHsKPiA+Pj4gK8KgwqDCoCBwbV9zZGU3X2F1eF8zcDNfZW46
IHBjaWUtYXV4LTNwMy1kZWZhdWx0LXN0YXRlIHsKPiA+PiBXaGF0IGlzIHNkZTc/IE90aGVyIHRo
YW4gdGhhdDoKPiA+Pgo+ID4+Cj4gPj4gUmV2aWV3ZWQtYnk6IERtaXRyeSBCYXJ5c2hrb3YgPGRt
aXRyeS5iYXJ5c2hrb3ZAb3NzLnF1YWxjb21tLmNvbT4KPiA+Pgo+ID4gSGkgRG1pdHJ5Cj4gPiAK
PiA+IEnigJltIG5vdCBzdXJlIHdoYXQg4oCcc2RlN+KAnSByZWZlcnMgdG8gc3BlY2lmaWNhbGx5
LiBJIHNhdyB0aGlzIG5hbWUgaW4gdGhlCj4gCj4gSXQgcmVmZXJzIHRvICJTRCBFeHByZXNzIiB3
aGljaCB3YXMgY29ubmVjdGVkIHRvIHRoYXQgUENJZSBob3N0IG9uIHNvbWUKPiBmbGF2b3JzIG9m
IHRoZSBpbnRlcm5hbCBib2FyZHMsIGFuZCB0aGUgbmFtaW5nIG11c3QgaGF2ZSBzdHVjay4uCgpU
aGFua3MhCgoKUmV2aWV3ZWQtYnk6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZA
b3NzLnF1YWxjb21tLmNvbT4KCgoKLS0gCldpdGggYmVzdCB3aXNoZXMKRG1pdHJ5CgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
