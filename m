Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D3F2CD6E44
	for <linux-phy@archiver.kernel.org>; Thu, 28 May 2026 13:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NB/21KAK1C+ebxFbIXRrTK5GdgDytL4odNDOaq4J5B8=; b=mZMUyx7HGdsQM1
	TmeTNjiOIFoRoPWIWo3P2FslncpY2qBQZ0TS+XTC/Yzj2DnEMG2J/3IGbRci8pcu7aE9lTZfn4Atd
	esJmzMRAqWT8KkQhGqAWt94Qwdpu2nifp7UXxLBZdfmhgHREgck0i1XFt3jSpU8HMKSrjNOB8FPF9
	sDfsqLdGOzEm5Y3wNhCjhijO4CnncJkks4S9hUEH4ds+ROh8oCowMfrCPIG1dG1ci45iQCXUQbiO1
	h/njgS+8qg7k6SuQAmAkJuYrfNFXFI8gGb4BvwCnLuQCna+VCpVAtWlPvIRncc/N+bIj8680zcb1X
	Nj57qEdYGYIpW3XO7f6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSb6C-00000005oJ6-2j6k;
	Thu, 28 May 2026 13:48:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSb69-00000005oIc-3KmI
	for linux-phy@lists.infradead.org;
	Thu, 28 May 2026 13:48:35 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64S8vZBB1697191
	for <linux-phy@lists.infradead.org>; Thu, 28 May 2026 13:48:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	C6JbapJaoSx0s4QBRzJFchDoSiCIzMDHmw52CsCUV+A=; b=gQxNZqnK7BaTQudT
	WSTiuRAz1aS08ICsz/5kcvm6HVWBoh8lHaf9WKokpxhZGVOjQxi4FCQWdgLCOt7g
	1XlntH49YpsN4kgd9fZzknsBYBgK/8cqzHEoPqlGhfdiEEfgCmUHmWJ/Q98m++l0
	XVPAIQn+Uhgdvj3scTevfwr0qgcw0PP3wvN2LILAqH2JuXQ/iW7/CyRevy3xpSa4
	5LEXEn+UWQYs6QyzHDGZXMmiTllE3Z4HrNoA76rsjOjO/HnSwa87O/vldWdzDgKO
	hKNVkE7/rRJ15SjCP8HkuFXvlOITxgqfdv0f9psx1ulFNHOOKFx6WPLqk7yJuzHk
	OQqAbQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ee7yajyd5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 28 May 2026 13:48:28 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-514b673c8f1so23099151cf.3
        for <linux-phy@lists.infradead.org>; Thu, 28 May 2026 06:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779976108; x=1780580908; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=C6JbapJaoSx0s4QBRzJFchDoSiCIzMDHmw52CsCUV+A=;
        b=GXYhpkIOPLx7nu+FCArSKr45SVhlD2ebbL+NrDJgqAv5V1Jd3bjFiKXZntGBx25GIK
         ia0sEvYTRxcBGIhWoodL5TdRQJjbvk9ZkYiaIcnbj8uplAZoZATfI+WDIenb8qjAUgCa
         q6BmhTKO/GqcQ7O+h9l0yT36OZBmu8slnNteMaYUdvMnODBRh5gHQr0cFeMRT1L8lPwJ
         JUn8k6Pf8k7596gWilLoGpJ7FapddlYFIqOWEf0x/IN2CAfhHWCopRt3GWCBXhXKNqwz
         RS1Hie8JtIIEJfZHV9oumP7y4Kaxqa0crgXWekaWFeXSeRaxvNHYU546u5gy+/tmarF3
         lL6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779976108; x=1780580908;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C6JbapJaoSx0s4QBRzJFchDoSiCIzMDHmw52CsCUV+A=;
        b=bbwVNJWNL7pJ3fZQqrGI8enYHiaR8gaFQ+/qK1DXbN9OBeQValE8dr/zaXf+FLSre6
         P76VZlgDRMydIkLbUYdVIN1wNwedBIyDTBhClR59r5lJT2OXMEzAgrFWhRG++gTGk5M6
         ah2EaYH/boGL74O7YCafQPyJYHUaCgvhT0zvR0yBrIA1uQC+MJmvucS9bvbNVXspcERs
         ZwY1gqFJ+bTnkc34SOqINQcN7mv8MbMekfW3ruN6zE6Wj7r55crQDkssVPzsXaEcvPGl
         uVJP6kh3B6DbjSXWqqhrRRT0UCEA9jr4ydrUgEel4I/VJLqRTB0FowNVsA97jrMSzXE2
         n7rQ==
X-Forwarded-Encrypted: i=1; AFNElJ++l6vvpZOUkDhpTRoMaX1NTKgCp6739M/CG0DYlyHXkA2X2XEXNNwDwIPzz1Xaa6JESN3XgWpl32E=@lists.infradead.org
X-Gm-Message-State: AOJu0YwZim2+ucURuhatDkCXLxzL8xKM4zOSUYVuvwL7Vt7uI6Hp+Gj1
	ousLnhMiPpm02pKkNCQiBrwTxPSDp1VVM8nwQCBZS+0AvLTj7XaIxcUQt7plc39zk6+wQebFKem
	BgtedcsUV2YUH4KpHk3bYzir3c4yQBZyWPIvda171KN6hd1YBC1c/WlOIAOP5P0YZVWPq
X-Gm-Gg: Acq92OH9utSb0AooF8YENwe7opAj2xhteX0td2Z4w5QSQ9KoFIkc6m/nm3LGGaow/Sm
	heGLvoVCzVMVHKfaUC0cYTX17nCCIwrRxvnmjrSZH5Z8p6df6RyH6VIJyAZqeRkLBfg7EnBORev
	hSeeV3qqfw1X7Ddq3m0fe/OSxwms1BIPmLS3cHf+9me7MfejVxQsyVsIz3wNr9gT2L5+hmEFj5w
	EgCPGiTbZ/+NQb2U4AXkXY9iGJwSb7bSDU62O/5nW2+/XDmKQhoV7GNFyOWql2KNakr1MSZQ5WV
	j6iwuZrFg3i80vKCP1MnH2hgn2oFVFFxQBP77+S7N9KCRykswqZBW8x92OK60Bua19+WAgpexCb
	x1PsW9UXhEK3gxlYr0OBMxnk4jOE5xhe0/8KNHDck6RwDiM3sLiedJ0UWwHfO7oEtinbuw5S73F
	g5XOaBZ01ruQbHZ7sShNcwHD7JqE5+NK2yznFhf23zpxLg9w==
X-Received: by 2002:a05:622a:134f:b0:50f:ad91:8912 with SMTP id d75a77b69052e-516d445981cmr388784291cf.13.1779976107833;
        Thu, 28 May 2026 06:48:27 -0700 (PDT)
X-Received: by 2002:a05:622a:134f:b0:50f:ad91:8912 with SMTP id d75a77b69052e-516d445981cmr388783831cf.13.1779976107344;
        Thu, 28 May 2026 06:48:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa463220b5sm1920287e87.52.2026.05.28.06.48.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2026 06:48:26 -0700 (PDT)
Date: Thu, 28 May 2026 16:48:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Qiang Yu <qiang.yu@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v4 5/9] phy: qcom: qmp-pcie: Refactor pipe clk
 register and parse_dt helpers
Message-ID: <ol436i3oqgdns74dliw72qns22gqfgygm6qkz7mo4g7oiywlsg@johrhdyv4rqx>
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
 <20260518-link_mode_0519-v4-5-269cd73cc5d1@oss.qualcomm.com>
 <ipzncrxi3x45fc6tz5xb7frxt62zmg4gwr25xmvzghlbt5miio@7eavln3cydfa>
 <fkcidw46hdsrrufxhhkk66mmitxnswmghpypyvtmax3x6vmnlp@2er6xgymxdf2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fkcidw46hdsrrufxhhkk66mmitxnswmghpypyvtmax3x6vmnlp@2er6xgymxdf2>
X-Proofpoint-ORIG-GUID: uo6uCaIQLH_o8y7eKoK8VpxdKun4pTZn
X-Proofpoint-GUID: uo6uCaIQLH_o8y7eKoK8VpxdKun4pTZn
X-Authority-Analysis: v=2.4 cv=E/r9Y6dl c=1 sm=1 tr=0 ts=6a1847ac cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=JfrnYn6hAAAA:8
 a=EUspDBNiAAAA:8 a=HkNMFyVr_tcJnp_woqUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI4MDEzOCBTYWx0ZWRfXwMuXRs6xh7E8
 bYg2KF53dXRM1Il6oQOJNcuDvTIsmQnXrVNewyn9dKEU0lWUd04cB+mY3jVhkzxOt0CBFKHdRXG
 29aK5EKK8OoYOuVI0N6gfLc2egIqYPhyupQZpEcaxYJfqBuPuVFqYQ7s9GM6PpjegQfMAp4Cv7n
 gIAGwZyxZKYSlLsJuVgdbfthrIpR4IEMzbnUBIts4Zxcp0O15nIAza3BoUnMp5mswIhGlud8+60
 90TCYW2L9jgkJQp1QnvoT8LJUBHjhhOBFjHKvuBOdRcAb9QMdKAFQPVSfYQKPos54vxDRorct2k
 mOwbJUEEmXgeuOcqGeu0I/5M07yHVYpRfRzEKUp3I09VINR/2unua209OOpf/g/XzsGoUdedJcB
 5kw4SMT2gTJzwrLsAuZ00kzNX8ACmdAl+pz4YksFzJX47QErU9Z38CCO5fdSa3pKxypSUKdHEUf
 xebwXPFfiULwOj+EjAw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-28_03,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2605280138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_064833_854966_2DF8272E 
X-CRM114-Status: GOOD (  28.23  )
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

T24gRnJpLCBNYXkgMjIsIDIwMjYgYXQgMDQ6Mjc6MzVQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IE9uIFdlZCwgTWF5IDIwLCAyMDI2IGF0IDA3OjI1OjAxUE0gKzAzMDAs
IERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPiBPbiBNb24sIE1heSAxOCwgMjAyNiBhdCAxMDo0
NzoxNlBNIC0wNzAwLCBRaWFuZyBZdSB3cm90ZToKPiA+ID4gU29tZSBRTVAgUENJZSBQSFkgaGFy
ZHdhcmUgYmxvY2tzIGNhbiBiZSBzcGxpdCBpbnRvIG11bHRpcGxlIHN1Yi1QSFlzCj4gPiA+IHVu
ZGVyIGEgc2luZ2xlIERUIG5vZGUsIGVhY2ggcmVxdWlyaW5nIGl0cyBvd24gcGlwZSBjbG9jayBy
ZWdpc3RyYXRpb24gYW5kCj4gPiA+IERUIHJlc291cmNlIG1hcHBpbmcuIFRoZSBjdXJyZW50IGhl
bHBlcnMgYXJlIHRpZ2h0bHkgY291cGxlZCB0byBhIHNpbmdsZQo+ID4gPiBxbXBfcGNpZSBpbnN0
YW5jZSwgd2hpY2ggcHJldmVudHMgcmV1c2UgYWNyb3NzIHN1Yi1QSFkgaW5zdGFuY2VzLgo+ID4g
PiAKPiA+ID4gUmVmYWN0b3IgX19waHlfcGlwZV9jbGtfcmVnaXN0ZXIoKSBhcyBhIGdlbmVyaWMg
aGVscGVyIGFuZCByZWR1Y2UKPiA+ID4gcGh5X3BpcGVfY2xrX3JlZ2lzdGVyKCkgdG8gYSB0aGlu
IHdyYXBwZXIgYXJvdW5kIGl0LiBTaW1pbGFybHksIGV4dHJhY3QKPiA+ID4gcW1wX3BjaWVfcGFy
c2VfZHRfY29tbW9uKCkgZnJvbSBxbXBfcGNpZV9wYXJzZV9kdCgpIHRvIGhvbGQgdGhlIHJlZ2lz
dGVyLQo+ID4gPiBtYXBwaW5nIGFuZCBwaXBlLWNsb2NrIHNldHVwIHRoYXQgd2lsbCBiZSBzaGFy
ZWQgYmV0d2VlbiBzdWItUEhZIGluc3RhbmNlcywKPiA+ID4gd2l0aCBwaXBlIGNsb2NrIG5hbWVz
IHBhcmFtZXRlcmlzZWQgcGVyIGluc3RhbmNlLgo+ID4gPiAKPiA+ID4gVGhpcyBpcyBhIHByZXBh
cmF0b3J5IHN0ZXAgYmVmb3JlIGFkZGluZyBtdWx0aS1QSFkgc3VwcG9ydC4gTm8gZnVuY3Rpb25h
bAo+ID4gPiBjaGFuZ2UgZm9yIGV4aXN0aW5nIHBsYXRmb3Jtcy4KPiA+ID4gCj4gPiA+IFNpZ25l
ZC1vZmYtYnk6IFFpYW5nIFl1IDxxaWFuZy55dUBvc3MucXVhbGNvbW0uY29tPgo+ID4gPiAtLS0K
PiA+ID4gIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMgfCA3NiArKysr
KysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDQ0IGlu
c2VydGlvbnMoKyksIDMyIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBJJ2Qgc3VnZ2VzdCBzcGxpdHRp
bmcgdGhlIEdseW11ciBQSFkgdG8gYSBzZXBhcmF0ZSBkcml2ZXIuIE90aGVyd2lzZSB3ZQo+ID4g
ZW5kIHVwIGhhdmluZyB0b28gbWFueSBzaW5nbGUtcGxhdGZvcm0sIHNpbmdsZS1kZXZpY2Ugc3Bl
Y2lmaWNzIHdoaWNoCj4gPiBkb24ndCBhcHBseSB0byBvdGhlciBwbGF0Zm9ybXMuCj4gPiAKPiAK
PiBJIGRvbid0IHRoaW5rIHRoYXQncyByZWFsbHkgbmVlZGVkLiBUaGlzIHNoYXJlZCBQSFkgY29u
Y2VwdCBpcyBnb2luZyB0byBiZQo+IGFwcGxpY2FibGUgdG8gdXBjb21pbmcgU29DcyBhcyB3ZWxs
LiBBbmQgbW9yZW92ZXIsIHRoZSBzcGxpdCB3b24ndCBiZSBjbGVhbgo+IGVpdGhlci4gV2Ugc3Rp
bGwgbmVlZCB0byByZXVzZSBhIGxvdCBvZiBjb21tb24gbG9naWMgaW4gdGhlICdwaHktcWNvbS1x
bXAtcGNpZScKPiBkcml2ZXIgYW5kIG1heSBvbmx5IGVuZCB1cCBrZWVwaW5nIHZlcnkgbWluaW1h
bCBjb2RlIGluCj4gJ3BoeS1xY29tLXFtcC1wY2llLWdseW11cicuCgpUaGVuIHNwbGl0dGluZyBt
YWtlcyBldmVuIG1vcmUgc2Vuc2UuIExldCdzIG5vdCBjbHV0dGVyIHRoZSBleGlzdGluZwpkcml2
ZXIgd2l0aCB0b28gbWFueSBjb25kaXRpb25zIGFuZCBvcHRpb25zLgoKPiAKPiBJZiB5b3UgYXJl
IGNvbmNlcm5lZCBhYm91dCB0aGUgZmlsZSBzaXplIG9mICdwaHktcWNvbS1xbXAtcGNpZScsIHRo
ZW4gd2Ugc2hvdWxkCj4gbW92ZSB0aGUgU29DIHNwZWNpZmljICdjZmcnIHN0cnVjdHMgaW50byBh
IHNlcGFyYXRlIGZpbGUgYXMgdGhhdCdzIHdoYXQKPiBvY2N1cHlpbmcgbWFqb3JpdHkgb2YgdGhl
IHNwYWNlLgoKTm8sIGl0J3MgcmVhbGx5IHRoZSAnc2hhcmVkJyBwYXJ0LgoKPiAKPiAtIE1hbmkK
PiAKPiAtLSAKPiDgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K61
4K6u4K+NCj4gCj4gLS0gCj4gbGludXgtcGh5IG1haWxpbmcgbGlzdAo+IGxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCj4gaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5CgotLSAKV2l0aCBiZXN0IHdpc2hlcwpEbWl0cnkKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
