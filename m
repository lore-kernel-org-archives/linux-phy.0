Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8A84606A326
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 09:18:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=P12OqbCr;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=AovAE3VJ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=b0bXI34g
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+GqvBHYRwB5aY6RxDkr3x/dy5pEG9jOeRlRL4XxPCF4=; b=P12OqbCr/ldW6m4pAf5ZaYJZPt
	AMBhRpTAPJb3dD43RCjfyLcklN21syxNayE+or8MMOQatx/d2dsdEBh6WR8xLv8yjRrai3adeKYq3
	/qNhIHZGBEGszFdVa95QpPV3B49E0BDmMNew2EEPZkzAQ/MzvI2U4QkB+mYV5Qxez3DwYK9wz9gQK
	d/zd/g4FOw8VCzP1lRfrJRX7zWcNrIAEyOf6hc1QNcDO6skdIGG61gvTbKWW/uOSiCHCr87SmRCEw
	cGuqs6LKbuV7kk6gdGVrEkko7DFNW1e7Wfw+VubaOGpnNPl7BkxTUw8XwnirPxU+Ou4GOBTbPB5np
	WsLC+dbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoBG-0000000FydP-2ucH;
	Mon, 02 Nov 2026 09:18:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoBD-0000000Fyd0-3i9C
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 09:18:17 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A29AS0W3440496
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 09:18:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GNaiykJMZ9ZERRTHFCTAR23L25CCvCxxrRhl73XmV5I=; b=AovAE3VJ0TaYsNYn
	E8ywr9B8rjHa+QUP8TmYW8aHcBvsbeuh2XY1xazLqOGY+xlaMqEUplRCreqXFK/B
	OBjhsXe2oLzzPMWky29RuuosI5rG316XsZr1a1b6CaSwRM5XF6mV7/3VPnB7zYR5
	UY+v/dIK/3ZMDBrMzEoqDjT8pVmnaoToHSniHV+yWvBTKxPPB3msreKL97Hifo0j
	89SRUrJNag8HTKqqDx0CEhSYjs3ngWM7TATCJp27neThcncbecNcr41Z7aozcnd5
	zzr2Rdup4LX5uFw+ALyU8Hmhrvz2BY1SZxm9nQMqJbtDj1WNZQQrPHbN2uQRGeRT
	sPlKrA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hpg201m32-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 09:18:14 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-8a065d0e9deso2704515b3a.0
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 01:18:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793611094; x=1794215894; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GNaiykJMZ9ZERRTHFCTAR23L25CCvCxxrRhl73XmV5I=;
        b=b0bXI34glV1jjPZdAS+XFh9RARKSr+PsN/jO07/m0TQpXVJApIF1o5tw9+D31J/x9b
         EdP1xIQDDZ7C6OrQo2ijrxYj0KfYaY/SL1WQVrvJIjZyQ6/yTWSzE2LB0RtU92kIYm65
         irCfI6wLxMdFnn8Nh0hVMjxbsFeTSmmziLWjtIgBCvP+1pXZyyGcOUaPT7EfWT8sGmbp
         ULfI+IATd8BgVjdt9/UnBIUhrZCBn29TB7QTAb60X3i+3U6AwpzJ+K+skp9mEiMEJlh3
         Q1hr5rg1nX2P2F9JeKpeT5o2V4iTm66/Phwc+D5/3d8GiLPHV+k/SeOd53tJ/isoITUC
         m5kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793611094; x=1794215894;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GNaiykJMZ9ZERRTHFCTAR23L25CCvCxxrRhl73XmV5I=;
        b=Mh7D+rZ+RcqTJfsnTB4L6sby7ygCYxr1DmMTJkL6sX138TYf98dWkv7R71LlGDAZu9
         OoaqtPCcihvuzemMWwKqgu5EctdSPh0jCnpGqnXlnlnwRXQG2tCK1/7XlehFauqK7H4M
         M2TWPdL88WAIiyjc+HsSnx+zeL7xJzdfzlXKnqHi0ZJpc+MeTunJKIPsDkVT1dHgcvdK
         EDvsjUkAkVkdzDOB4l6HTQMH8f2U+2MYYu7TVlqGKwytpzh9TZ5hk2KD/Av9KC46J9UY
         Jl0yhffX17D+IS+MQ9SgpBR4JXn7nzbcApbNksCixxexvWAu4y86hicz2/BBy+WllJr7
         KssA==
X-Gm-Message-State: APuU4Z/Y/loBwkoZwBwivtRfNAUmWyC9j5TchjYDKf3OBwiQ7rDtbPbJ
	1PO/TevdcCh8OdFikJFFgI0VyzJSJu43loJaNl0+Qo92EMVYLJKOYXGY7wF8zjbGiBL0UzPONDw
	GbOXZXEu/XkAvea8QRHGC/pbwdRbRz0mh8hyG9ab09MdTkesKL8HMY6minvO9gxRGhgEc
X-Gm-Gg: AYBFou3edp/d7jLOm8CP7fqcSLUvx98hUEinQJes85Nt+NcAv7XdR+6xKazVdanpv9y
	hZH7wn3UuYq18WeSUfmqpGRUj24f/n4a5crBTwp1yjiK2Rnrarlcq2U1HkHGdMt26JxQJoBxefH
	i2me2Q9UAmiqyrsKJHwlHChL1LsCQSvx4vqgTIjpWI0F4c+ErwHrjap0o2Hrur9p2eyUnKVa+m7
	1UCf2cQ62E34cGMv357yMraxSFRPxvk7IRrzsDriak6reyod91ePg/Djh1z7IjvA7Elb5s/w3uE
	KpUC3GxLNgb/1e0L9tiIsM0J1NI81P0mkxRkWb7tHwSle+novAMzIQfUFqyTQWZslS03Shi+7Mf
	C+tpulfsrlAP0egxaOBzdwZcBj0tHD0+eBV6SDYAODby3hlRvOqGPO0aW7JoG2kew8XSNtbiXuH
	XYGy0Dvs/v2kJ3VG53ojjvm8XhSirHcIeX
X-Received: by 2002:a05:6a00:4b56:b0:88b:8701:b869 with SMTP id d2e1a72fcca58-8a9bf2406bemr5756712b3a.24.1793611093449;
        Mon, 02 Nov 2026 01:18:13 -0800 (PST)
X-Received: by 2002:a05:6a00:4b56:b0:88b:8701:b869 with SMTP id d2e1a72fcca58-8a9bf2406bemr5756686b3a.24.1793611092908;
        Mon, 02 Nov 2026 01:18:12 -0800 (PST)
Received: from [10.239.96.176] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8aadad94a8esm1710055b3a.55.2026.11.02.01.18.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2026 01:18:12 -0800 (PST)
Message-ID: <65de0201-eab7-4d03-8b00-af17e2907856@oss.qualcomm.com>
Date: Mon, 2 Nov 2026 17:18:06 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v23 11/15] media: qcom: camss: tpg: Add support for v2.4.0
 TPG
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-11-95f250b18612@oss.qualcomm.com>
 <7c7cd421-81de-4c5f-9e37-0bb3b7bc5974@linaro.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <7c7cd421-81de-4c5f-9e37-0bb3b7bc5974@linaro.org>
X-Proofpoint-GUID: KrijWIGjUNE4JWZaUkbd0GRykF5lXcfY
X-Authority-Analysis: v=2.4 cv=fZY4WEQF c=1 sm=1 tr=0 ts=6ae85556 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=J83HQVenGjWz2Msjj4QA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: KrijWIGjUNE4JWZaUkbd0GRykF5lXcfY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDAzNiBTYWx0ZWRfX9Zx7LeGq+TXP
 hw7BveYDs7Yes61iT4PX9qZzLwWfCHgU97nhAq/GkzFFDxSAGvdjnKz27zesgqXEMCYs5LNv2G3
 nrrduiIGCF11dbLCI0OfCFRhOM92LJnZr676wMERNn+xDvuwTSqF2/ad77XXq6O/tVy1/yV6XaB
 mgnZPlA8uLipgaCu+n378i9yyFlE3rtuBRNjNwHrimfTaQDzaejS/2DU9Y96jGbjb4vyWht/k1h
 42HGP60INfDzL9suwMAhVQAxOIMDzMjfkCrhlitjpZvt8q2j59aUm48ZSsH2iObapvXF6ue59jW
 I2jPwM9h/Bu27WHgwW0jP3SbQALmEHogl+puMzJT0KS9+1vFsJggjCpa7Y1ROhxahboiIH6+OmG
 w+lotgEecpxyx/FIRec3+VksSfaLcoSaZd+6Kc8GpY9+SAdUHdDuTA9HsaDAGJk+0rK1YUDrpjQ
 XRyRB0P1WtaTyKQ8ccQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDAzNiBTYWx0ZWRfX3F9pQzDK4o9V
 OtjzxjVdZpXOaKsTx3tIa8tcnJJK+1S84RQj4MTQVPSUTuYw+xo/MOsAYSnkj7EFK4mknkSpKkx
 l6rB6OtYz0wS/+m5bJ8LEbo4n0r+3JQ=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611020036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_011816_065565_FD06201F 
X-CRM114-Status: GOOD (  28.16  )
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
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTAvMzEvMjAyNiA3OjM4IFBNLCBWbGFkaW1pciBaYXBvbHNraXkgd3JvdGU6Cj4gT24gMTAv
MjgvMjYgMTc6MjAsIEhhbmd4aWFuZyBNYSB3cm90ZToKPj4gQWRkIHN1cHBvcnQgZm9yIHRoZSBU
UEcgZm91bmQgb24gS2FhbmFwYWxpLiBUaGlzIFRQRyB1c2VzIGhhcmR3YXJlCj4+IHZlcnNpb24g
Mi40LjAsIHdoaWNoIGRyaXZlcyB0ZXN0LWVuYWJsZSBhbmQgcmVzZXQgdGhyb3VnaCB0aGUKPj4g
VFBHX0NUUkxfQ01EIHJlZ2lzdGVyIGF0IG9mZnNldCAweDFmNCBpbnN0ZWFkIG9mIHRoZSBURVNU
X0VOIGJpdCBpbgo+PiBUUEdfQ1RSTCBhbmQgdGhlIFRQR19DTEVBUiByZWdpc3Rlci4gSXRzIG91
dHB1dCBpcyByb3V0ZWQgaW50byB0aGUKPj4gQ1NJRCAxMDgwIFJYIHRocm91Z2ggdGhlIENTSTIg
VFBHIG11eCwgc28gdGhlIENTSUQgc2VsZWN0cyB0aGUgVFBHIGFzCj4+IHRoZSBkYXRhIHNvdXJj
ZSB3aGVuIGEgdGVzdCBwYXR0ZXJuIGlzIHNlbGVjdGVkLgo+Pgo+PiBBZGQgdGhlIFRQRyByZXNv
dXJjZXMgdG8gdGhlIEthYW5hcGFsaSBjYW1zcyByZXNvdXJjZXMgc28gdGhhdCB0aGUgVFBHCj4+
IHN1YmRldmljZXMgYXJlIGNyZWF0ZWQgb24gdGhpcyBTb0MuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6
IEhhbmd4aWFuZyBNYSA8aGFuZ3hpYW5nLm1hQG9zcy5xdWFsY29tbS5jb20+Cj4+IC0tLQo+PiDC
oCAuLi4vbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lkLTEwODAuY8KgwqDCoCB8
IDE1ICsrKysrKysrKysrKy0tCj4+IMKgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1z
cy9jYW1zcy10cGctZ2VuMS5jIHwgMjMgKysrKysrKysrKysrIAo+PiArKysrLS0tLS0tCj4+IMKg
IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jwqDCoMKgwqDCoMKgwqDC
oMKgIHzCoCAyICsrCj4+IMKgIDMgZmlsZXMgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgOCBk
ZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNv
bS9jYW1zcy9jYW1zcy1jc2lkLTEwODAuYyBiLyAKPj4gZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9x
Y29tL2NhbXNzL2NhbXNzLWNzaWQtMTA4MC5jCj4+IGluZGV4IDNkOTBkMzEyMDFmYS4uZWM1NmJh
ODVhMGZhIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3Mv
Y2Ftc3MtY3NpZC0xMDgwLmMKPj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2Nh
bXNzL2NhbXNzLWNzaWQtMTA4MC5jCj4+IEBAIC02NCw2ICs2NCw4IEBACj4+IMKgICNkZWZpbmXC
oMKgwqDCoMKgwqDCoCBDU0kyX1JYX0NGRzBfTlVNX0FDVElWRV9MQU5FU8KgwqDCoMKgwqDCoMKg
IDAKPj4gwqAgI2RlZmluZcKgwqDCoMKgwqDCoMKgIENTSTJfUlhfQ0ZHMF9ETDBfSU5QVVRfU0VM
wqDCoMKgwqDCoMKgwqAgNAo+PiDCoCAjZGVmaW5lwqDCoMKgwqDCoMKgwqAgQ1NJMl9SWF9DRkcw
X1BIWV9OVU1fU0VMwqDCoMKgwqDCoMKgwqAgMjAKPj4gKyNkZWZpbmXCoMKgwqDCoMKgwqDCoCBD
U0kyX1JYX0NGRzBfVFBHX01VWF9FTsKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQklUKDI3KQo+PiAr
I2RlZmluZcKgwqDCoMKgwqDCoMKgIENTSTJfUlhfQ0ZHMF9UUEdfTVVYX1NFTMKgwqDCoMKgwqDC
oMKgIEdFTk1BU0soMjksIDI4KQo+PiDCoCAjZGVmaW5lwqDCoMKgwqDCoMKgwqAgQ1NJMl9SWF9D
RkcwX1BIWV9TRUxfQkFTRV9JRFjCoMKgwqDCoMKgwqDCoCAxCj4+IMKgICNkZWZpbmUgQ1NJRF9D
U0kyX1JYX0NGRzHCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDB4ODg0Cj4+IMKgICNkZWZpbmXCoMKg
wqDCoMKgwqDCoCBDU0kyX1JYX0NGRzFfRUNDX0NPUlJFQ1RJT05fRU7CoMKgwqDCoMKgwqDCoCBC
SVQoMCkKPj4gQEAgLTE0OCw2ICsxNTAsNyBAQCBzdGF0aWMgdm9pZCBfX2NzaWRfcmVnX3VwZGF0
ZV9jbGVhcihzdHJ1Y3QgCj4+IGNzaWRfZGV2aWNlICpjc2lkLCBpbnQgcG9ydF9pZCkKPj4gwqAg
c3RhdGljIHZvaWQgX19jc2lkX2NvbmZpZ3VyZV9yeChzdHJ1Y3QgY3NpZF9kZXZpY2UgKmNzaWQs
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGNzaWRfcGh5X2Nv
bmZpZyAqcGh5KQo+PiDCoCB7Cj4+ICvCoMKgwqAgc3RydWN0IGNhbXNzICpjYW1zcyA9IGNzaWQt
PmNhbXNzOwo+PiDCoMKgwqDCoMKgIHU4IGxhbmVfY250ID0gcGh5LT5sYW5lX2NudDsKPj4gwqDC
oMKgwqDCoCBpbnQgdmFsOwo+PiBAQCAtMTU2LDggKzE1OSwxNiBAQCBzdGF0aWMgdm9pZCBfX2Nz
aWRfY29uZmlndXJlX3J4KHN0cnVjdCAKPj4gY3NpZF9kZXZpY2UgKmNzaWQsCj4+IMKgwqDCoMKg
wqAgdmFsID0gKGxhbmVfY250IC0gMSkgPDwgQ1NJMl9SWF9DRkcwX05VTV9BQ1RJVkVfTEFORVM7
Cj4+IMKgwqDCoMKgwqAgdmFsIHw9IHBoeS0+bGFuZV9hc3NpZ24gPDwgQ1NJMl9SWF9DRkcwX0RM
MF9JTlBVVF9TRUw7Cj4+IC3CoMKgwqAgdmFsIHw9IChwaHktPmNzaXBoeV9pZCArIENTSTJfUlhf
Q0ZHMF9QSFlfU0VMX0JBU0VfSURYKQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqAgPDwgQ1NJMl9S
WF9DRkcwX1BIWV9OVU1fU0VMOwo+PiArCj4+ICvCoMKgwqAgaWYgKGNhbXNzLT50cGcgJiYgY3Np
ZC0+dHBnX2xpbmtlZCAmJgo+PiArwqDCoMKgwqDCoMKgwqAgY2Ftc3MtPnRwZ1twaHktPmNzaXBo
eV9pZF0udGVzdGdlbi5tb2RlICE9IAo+PiBUUEdfUEFZTE9BRF9NT0RFX0RJU0FCTEVEKSB7Cj4+
ICvCoMKgwqDCoMKgwqDCoCB2YWwgfD0gRklFTERfUFJFUChDU0kyX1JYX0NGRzBfVFBHX01VWF9T
RUwsIHBoeS0+Y3NpcGh5X2lkICsgMSk7Cj4+ICvCoMKgwqDCoMKgwqDCoCB2YWwgfD0gQ1NJMl9S
WF9DRkcwX1RQR19NVVhfRU47Cj4+ICvCoMKgwqAgfSBlbHNlIHsKPj4gK8KgwqDCoMKgwqDCoMKg
IHZhbCB8PSAocGh5LT5jc2lwaHlfaWQgKyBDU0kyX1JYX0NGRzBfUEhZX1NFTF9CQVNFX0lEWCkK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPDwgQ1NJMl9SWF9DRkcwX1BIWV9OVU1fU0VMOwo+
PiArwqDCoMKgIH0KPj4gKwo+PiDCoMKgwqDCoMKgIHdyaXRlbCh2YWwsIGNzaWQtPmJhc2UgKyBD
U0lEX0NTSTJfUlhfQ0ZHMCk7Cj4+IMKgwqDCoMKgwqAgdmFsID0gQ1NJMl9SWF9DRkcxX0VDQ19D
T1JSRUNUSU9OX0VOOwo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29t
L2NhbXNzL2NhbXNzLXRwZy1nZW4xLmMgYi8gCj4+IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNv
bS9jYW1zcy9jYW1zcy10cGctZ2VuMS5jCj4+IGluZGV4IGQyOWRlNWY5M2MxOC4uY2FiYmIyNjM4
Y2YzIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ft
c3MtdHBnLWdlbjEuYwo+PiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3Mv
Y2Ftc3MtdHBnLWdlbjEuYwo+PiBAQCAtMjIsNiArMjIsNyBAQAo+PiDCoCAjZGVmaW5lIFRQR19I
V19WRVJfMl8wXzDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgVFBHX0hXX1ZFUigyLCAw
LCAwKQo+PiDCoCAjZGVmaW5lIFRQR19IV19WRVJfMl8xXzDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgVFBHX0hXX1ZFUigyLCAxLCAwKQo+PiArI2RlZmluZSBUUEdfSFdfVkVSXzJfNF8w
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFRQR19IV19WRVIoMiwgNCwgMCkKPj4gwqAg
I2RlZmluZSBUUEdfSFdfU1RBVFVTwqDCoMKgwqDCoMKgwqAgMHg0Cj4+IEBAIC0zMyw3ICszNCw5
IEBACj4+IMKgICMgZGVmaW5lIFRQR19DVFJMX09WRVJMQVBfU0hEUl9FTsKgwqDCoCBCSVQoMTAp
Cj4+IMKgICMgZGVmaW5lIFRQR19DVFJMX05VTV9BQ1RJVkVfVkPCoMKgwqDCoMKgwqDCoCBHRU5N
QVNLKDMxLCAzMCkKPj4gLSNkZWZpbmUgVFBHX0NMRUFSwqDCoMKgwqDCoMKgwqAgMHgxRjQKPj4g
KyNkZWZpbmUgVFBHX0NUUkxfQ01EwqDCoMKgwqDCoMKgwqAgMHgxRjQKPj4gKyMgZGVmaW5lIFRQ
R19DVFJMX0NNRF9URVNUX0VOwqDCoMKgwqDCoMKgwqAgQklUKDQpCj4+ICsjIGRlZmluZSBUUEdf
Q1RSTF9DTURfSFdfUkVTRVTCoMKgwqDCoMKgwqDCoCBCSVQoMCkKPj4gwqAgLyogVFBHIFZDLWJh
c2VkIHJlZ2lzdGVycyAqLwo+PiDCoCAjZGVmaW5lIFRQR19WQ19uX0dBSU5fQ0ZHKG4pwqDCoMKg
wqDCoMKgwqAgKDB4NjAgKyAobikgKiAweDYwKQo+PiBAQCAtMTY0LDE4ICsxNjcsMjYgQEAgc3Rh
dGljIGludCB0cGdfc3RyZWFtX29uKHN0cnVjdCB0cGdfZGV2aWNlICp0cGcpCj4+IMKgwqDCoMKg
wqAgfQo+PiDCoMKgwqDCoMKgIC8qIEdsb2JhbCBUUEcgY29udHJvbCAqLwo+PiAtwqDCoMKgIHZh
bCA9IEZJRUxEX1BSRVAoVFBHX0NUUkxfVEVTVF9FTiwgMSkgfAo+PiAtwqDCoMKgwqDCoMKgwqDC
oMKgIEZJRUxEX1BSRVAoVFBHX0NUUkxfTlVNX0FDVElWRV9MQU5FUywgbGFuZV9jbnQgLSAxKSB8
Cj4+ICvCoMKgwqAgdmFsID0gRklFTERfUFJFUChUUEdfQ1RSTF9OVU1fQUNUSVZFX0xBTkVTLCBs
YW5lX2NudCAtIDEpIHwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBGSUVMRF9QUkVQKFRQR19D
VFJMX05VTV9BQ1RJVkVfVkMsIGxhc3RfdmMpOwo+PiAtwqDCoMKgIHdyaXRlbCh2YWwsIHRwZy0+
YmFzZSArIFRQR19DVFJMKTsKPj4gKwo+PiArwqDCoMKgIGlmICh0cGctPmh3X3ZlcnNpb24gPCBU
UEdfSFdfVkVSXzJfNF8wKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCB2YWwgfD0gRklFTERfUFJFUChU
UEdfQ1RSTF9URVNUX0VOLCAxKTsKPj4gK8KgwqDCoMKgwqDCoMKgIHdyaXRlbCh2YWwsIHRwZy0+
YmFzZSArIFRQR19DVFJMKTsKPj4gK8KgwqDCoCB9IGVsc2Ugewo+PiArwqDCoMKgwqDCoMKgwqAg
d3JpdGVsKHZhbCwgdHBnLT5iYXNlICsgVFBHX0NUUkwpOwo+PiArwqDCoMKgwqDCoMKgwqAgd3Jp
dGVsKFRQR19DVFJMX0NNRF9URVNUX0VOLCB0cGctPmJhc2UgKyBUUEdfQ1RSTF9DTUQpOwo+PiAr
wqDCoMKgIH0KPj4gwqDCoMKgwqDCoCByZXR1cm4gMDsKPj4gwqAgfQo+PiDCoCBzdGF0aWMgaW50
IHRwZ19yZXNldChzdHJ1Y3QgdHBnX2RldmljZSAqdHBnKQo+PiDCoCB7Cj4+IC3CoMKgwqAgd3Jp
dGVsKDAsIHRwZy0+YmFzZSArIFRQR19DVFJMKTsKPj4gLcKgwqDCoCB3cml0ZWwoMSwgdHBnLT5i
YXNlICsgVFBHX0NMRUFSKTsKPj4gK8KgwqDCoCBpZiAodHBnLT5od192ZXJzaW9uIDwgVFBHX0hX
X1ZFUl8yXzRfMCkKPj4gK8KgwqDCoMKgwqDCoMKgIHdyaXRlbCgwLCB0cGctPmJhc2UgKyBUUEdf
Q1RSTCk7Cj4+ICsKPj4gK8KgwqDCoCB3cml0ZWwoVFBHX0NUUkxfQ01EX0hXX1JFU0VULCB0cGct
PmJhc2UgKyBUUEdfQ1RSTF9DTUQpOwo+PiDCoMKgwqDCoMKgIHJldHVybiAwOwo+PiDCoCB9Cj4g
Cj4gSXQgaXMgbmVjZXNzYXJ5IHRvIHNwbGl0IHRoaXMgY2hhbmdlIGludG8gdHdvIGZvciB0aGUg
bmV4dCBydW46Cj4gCj4gMSkgdGhlIGdlbmVyaWMgVFBHIHN1YmRldmljZSBjaGFuZ2UgdG8gc3Vw
cG9ydCBhIG5ldyBoYXJkd2FyZSBpbnRlcmZhY2UsIAo+IGVxdWFsIHRvCj4gCj4gIMKgIGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWFybS1tc20vMjAyNjEwMzExMTIyMDMuNTQ1MzE5LTQt
IAo+IHZsYWRpbWlyLnphcG9sc2tpeUBsaW5hcm8ub3JnLwo+IAoKQUNLCgo+IHRoaXMgbmV3IGlu
dGVyZmFjZSBpcyBmb3IgYSByYW5nZSBvZiBoYXJkd2FyZSBpbmNsdWRpbmcgU004NjUwIGFuZCBT
TTg3NTAsCj4gCj4gMikgdGhlIHJlc3Qgb2YgS2FhbmFwYWxpIHNwZWNpZmljIGNoYW5nZXMgZnJv
bSBiZWxvdyB0aGlzIGNvbW1lbnQuCj4gCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MuYyBiL2RyaXZlcnMvIAo+PiBtZWRpYS9wbGF0Zm9ybS9x
Y29tL2NhbXNzL2NhbXNzLmMKPj4gaW5kZXggNmZmODJkZDJhZWFmLi5kZjRiNGNmMzA3MTEgMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jCj4+
ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jCj4+IEBAIC01
ODUwLDExICs1ODUwLDEzIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgY2Ftc3NfcmVzb3VyY2VzIAo+
PiBrYWFuYXBhbGlfcmVzb3VyY2VzID0gewo+PiDCoMKgwqDCoMKgIC5wZF9uYW1lID0gInRvcCIs
Cj4+IMKgwqDCoMKgwqAgLnBtX2Nsa3MgPSB7ICJjcGFzX2Zhc3RfYWhiIiwgImNwYXNfYWhiIiwg
ImdjY19heGlfaGYiIH0sCj4+IMKgwqDCoMKgwqAgLmNzaXBoeV9yZXMgPSBjc2lwaHlfcmVzX2th
YW5hcGFsaSwKPj4gK8KgwqDCoCAudHBnX3JlcyA9IHRwZ19yZXNfeDFlODAxMDAsCj4gCj4gSXQg
aXMgY2xvc2VyIHRvICd0cGdfcmVzXzg3NzVwJywgYXQgbGVhc3QgdGhlIHByb3BlciBuYW1lIGZv
ciBJL08gcmVnaW9ucwo+IGlzIGV4cGVjdGVkIHRvIGJlICJ0cGdYIiByYXRoZXIgdGhhbiAiY3Np
dHBnWCIuCj4gCgpBQ0sKCj4+IMKgwqDCoMKgwqAgLmNzaWRfcmVzID0gY3NpZF9yZXNfa2FhbmFw
YWxpLAo+PiDCoMKgwqDCoMKgIC52ZmVfcmVzID0gdmZlX3Jlc19rYWFuYXBhbGksCj4+IMKgwqDC
oMKgwqAgLmljY19yZXMgPSBpY2NfcmVzX2thYW5hcGFsaSwKPj4gwqDCoMKgwqDCoCAuaWNjX3Bh
dGhfbnVtID0gQVJSQVlfU0laRShpY2NfcmVzX2thYW5hcGFsaSksCj4+IMKgwqDCoMKgwqAgLmNz
aXBoeV9udW0gPSBBUlJBWV9TSVpFKGNzaXBoeV9yZXNfa2FhbmFwYWxpKSwKPj4gK8KgwqDCoCAu
dHBnX251bSA9IEFSUkFZX1NJWkUodHBnX3Jlc194MWU4MDEwMCksCj4+IMKgwqDCoMKgwqAgLmNz
aWRfbnVtID0gQVJSQVlfU0laRShjc2lkX3Jlc19rYWFuYXBhbGkpLAo+PiDCoMKgwqDCoMKgIC52
ZmVfbnVtID0gQVJSQVlfU0laRSh2ZmVfcmVzX2thYW5hcGFsaSksCj4+IMKgIH07Cj4+Cj4gCgot
LS0KQmVzdCBSZWdhcmRzLApIYW5neGlhbmcKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
