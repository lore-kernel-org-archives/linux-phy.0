Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B620BD2F352
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jan 2026 18:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a8TjRNAIxde5f3VswuomTPOsiCMNFbI5thEHSm8Eeos=; b=RUx9mY2jkSiza0
	FgFQ51zMZs5BECJg2bjcagy7CsUXtiISLtJ8Hs05aZZ0IBwDCChUMIEhnym55MklmtvMQz1cLY65O
	fw5LVQVvt9E9fUP+9gtEr1dsM/o/4oh1oOj7ARV8FuBd+2eK2cnYPm1tVFQiHhRYcbUtnns+mj/7Q
	JDy8nbmwCQBIOVALs2hEEvspE3tQCAMX4pgLeXFgqbDaCptfkyFSsQwJNx0sY3wacq62YfGAAvv/F
	EXyzcWgqNupA/IKRQMaVt4/Qo+2aqzMj+cp9cwvwtORaV05Var4bvGGvXqeOXlaTsczFHK6VEqp4R
	p/dLZx7OOnyZfCPuBAHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfjYO-00000007bIT-129O;
	Tue, 13 Jan 2026 18:55:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfjYL-00000007bHx-3j5A
	for linux-phy@lists.infradead.org;
	Tue, 13 Jan 2026 18:55:43 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DEjLHW4080735
	for <linux-phy@lists.infradead.org>; Tue, 13 Jan 2026 18:55:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6bbmN5F94hoWKqpvhnM5Dpcr9YmdutOrVc3SCFqTyLA=; b=hNxHtDHF5WaLhRIL
	EYzvqT/ZYmNfW/oydI4PLxwBZR7izIvieWfDNt6P3DTySgybB+O0WOSunJlNc1p/
	UHnoDHRycSgDJbtgmSRXMb7RQmIDm0wGo6kR+NpS5lGx45l/piXdqIbvHU59LoCN
	Uu9jM0H4gt6N2v8ioeItPukNSQjby8mYWj6yw9CwAj/8AbAgz1fC/cht+7fetLwQ
	/hhG678XgHNUO/Ey3EBZ2/cFumRnv/0F2zR0Ws6ATMZYsT5jg70e4+gL2Eg9PWCH
	XIB0188sewYultH96uBwzKV8H1gQSjduk3seqKXFn6jwMK2IbNRfpckB8n3Gnkc6
	wcTMAw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnr3e8vpf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Jan 2026 18:55:40 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8bc4493d315so2043139485a.1
        for <linux-phy@lists.infradead.org>; Tue, 13 Jan 2026 10:55:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768330540; x=1768935340; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6bbmN5F94hoWKqpvhnM5Dpcr9YmdutOrVc3SCFqTyLA=;
        b=ZCQNaaDa8NhBt4VngQyvB4gbNdJ3aA172hCpyHeI0NbqPAhTF8L5hNVzRp0lWvl7EA
         sEvBOJwDXYTxks1WbznGLwJBicm+7WIxB10gKNgGB0lK4lSpsrLYcVPvSuR3+c6zM2Lu
         ip3OKlWM7fNVwYN1AC/Hg+tFs+w30p7mISn8ZBNW+DqLkQoHFVmhhH+nnY5mTi8qRHGU
         wX3jTummZWn+Ifjx1iGVhXh7IyYQaHmG7nvKLB5J+q9k6pApFF0g4sCz3fDK7f5QwrYX
         Y0LoPHTNgGdIeX2qcv0d+G+GKkyAHUvyqsKFtEBO8VQhUUXE1Oyhp3nnQpvl5Wj2NuNm
         aubA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768330540; x=1768935340;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6bbmN5F94hoWKqpvhnM5Dpcr9YmdutOrVc3SCFqTyLA=;
        b=mOaETGPhXI1be6UFBa0ErOnsiKqzbVd87TY8FRTiafiU0MIcvaUPTapqcThO61a2wg
         5iFcPOghvywgRrvd67LE8SzIwPrlPVdAUIJKJkWMxL/TBe9CmtkbXohEjjh8lwW1Gz2B
         5h6ivl9vuPpGPf5teMexWYTW0HeuBtPuqBFVRDYQmcI9uQa4AC56SBtCBBf0j7dGZ2Yu
         5FYQugj8uQ+Pw6o+8Bpyh8haOT0y2Hgzgo2uQ6PqXMwJrgQoHAax/1o6Pu7k9qEqZPij
         c1N5JxYY/HFxc2Av9dCoGmiiVwRZpDlobSumj6jpFI+jc4HDmXmfymeZtjB3EDdeC+3q
         dTMA==
X-Forwarded-Encrypted: i=1; AJvYcCVgio6h1KEv504RPCuKM867ve5gFhcICU9UvTKhAtwWy0tWP+DWMwt1rU1+vLD4DUzbDGOA7r0s680=@lists.infradead.org
X-Gm-Message-State: AOJu0YzUgnrn0H42f9j37Tz/cbDffyH5Ydo7yYmvllFPDAGGvIIq+5jW
	EErRwyU59f/rCRF7nWftD8j6FcTIVxHtMo8t6QBq/UgS/a4pqqBl47FjsceX/hltCiQOGvbWkQ1
	/339tp4ZouuCOacfFUJNcDLk6lRUI/2tekPho/UTN9LRmorEGLNkde14yg5iKgbD2wcYw
X-Gm-Gg: AY/fxX7/58glRwltdhCjvirytRvpx6Z7MpeN/0rGDs41KDJdqYGI37uyHMqf2PViIU/
	jUFxgM16lGRt7YBCAEKYydxXDXjYiayl41TRnJqNSf46piv2+UpqEXypWOiiUDUuMwqI+JufSWx
	kYkKfSXQ2cG4MHw7IA7SKF9BpcEqYv9pmWiLlZn4luZI3wbj8xvZDekBakprUOzNEtqygWHvXFH
	RYQOtEIYI6zAGvdH45OBxpairD4SxUd6LJ5H3ooylNHao5Mwk5WxhqmowCQtwT2D+5q1z7hPSvZ
	+HhIiL6TfkAXR/vjcFiPio7wkymUhHLecb4T02XyuVox4Y7BrBXzSlz9UkG2Z0C9anRpHnk4tDW
	tWVkg0k4lglLzAn1IjTV/r+e++HJIpfJsJ527rpJxC1iuafvwHTUp6fDUO/OxkDhfNxOZuNM9Vl
	/BqEFTbK4MyBlH5nzLMlZh+zc=
X-Received: by 2002:a05:620a:2996:b0:8c0:e5ad:adbe with SMTP id af79cd13be357-8c52fbdcc1fmr33075585a.90.1768330539941;
        Tue, 13 Jan 2026 10:55:39 -0800 (PST)
X-Received: by 2002:a05:620a:2996:b0:8c0:e5ad:adbe with SMTP id af79cd13be357-8c52fbdcc1fmr33072585a.90.1768330539482;
        Tue, 13 Jan 2026 10:55:39 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38349da581esm11407481fa.11.2026.01.13.10.55.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 10:55:38 -0800 (PST)
Date: Tue, 13 Jan 2026 20:55:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/msm/dp: Correct LeMans/Monaco DP phy Swing/Emphasis
 setting
Message-ID: <ldl7floy6bi5d6svs45xsdgbgkgwxpvj4kuazzg3e6dxzm654l@l5pjud7mvcgu>
References: <20260109-klm_dpphy-v1-1-a6b6abe382de@oss.qualcomm.com>
 <5187dc04-a1a1-4537-9c80-aaa100dd0033@oss.qualcomm.com>
 <33d57a53-93b4-4ea3-a7bb-0b2015501bad@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33d57a53-93b4-4ea3-a7bb-0b2015501bad@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=TPFIilla c=1 sm=1 tr=0 ts=6966952c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=krnL4HSfpKtA2fdkqC8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDE1OCBTYWx0ZWRfX/hdAOCwAjvCR
 9xABSsJZm/BUKtf16B+038zDjXNzjMYX72JI3PAxSJSy+9hh1Y2E3q4bdTm2t8LYZauoKkI625E
 Mul0B7cHPPs/NWqbLUB4+4ZYrEqFrZhoLnUeAm6hRaO/+rPzAhgdKlTCqm8xCDMR5I5z/XugvJI
 dZ9v+eZhxLn9O5cB4O+e5BLQLmxR9atdZCMgUB3h8xjJWNhu4xQcwYZKDdWoA8ExXBipLmigTBp
 ddgtUyAxeMy66l1wVHXtTrQKyP18/py1GpKifsyY6ZKSdVnCxvO/zxZ/0+NU31a0Alr33ZbQbfl
 U4+tqskanR0jA23ZJ7gq7H2bByRPIR2+BY8W8Pb5oqZqyjyQUXmO6W+z7bP3323GIWTw1YWB5ve
 qoO/h3YmC/HgB/ChCFKWL5Pacfd58+k6pbzkMtVSG71HzYjoWRtdZC0ZKOEgPT+kBdgw5HHFvA/
 u5NPscoQ1MLq84VqKWw==
X-Proofpoint-GUID: fNvIVrlUyxeWSlb5Ph5CgYLH1GPdKc3F
X-Proofpoint-ORIG-GUID: fNvIVrlUyxeWSlb5Ph5CgYLH1GPdKc3F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_04,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 phishscore=0 clxscore=1015 spamscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130158
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_105542_072709_5DDE2594 
X-CRM114-Status: GOOD (  35.20  )
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

T24gVHVlLCBKYW4gMTMsIDIwMjYgYXQgMDg6MDQ6MDZQTSArMDgwMCwgWW9uZ3hpbmcgTW91IHdy
b3RlOgo+IAo+IAo+IE9uIDEvOS8yMDI2IDU6NTggUE0sIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4g
PiBPbiAxLzkvMjYgOTozMCBBTSwgWW9uZ3hpbmcgTW91IHdyb3RlOgo+ID4gPiBDdXJyZW50bHks
IHRoZSBMZU1hbnMvTW9uYWNvIERQIFBIWSBvcGVyYXRlcyBpbiBEUCBtb2RlIHJhdGhlciB0aGFu
IGVEUAo+ID4gPiBtb2RlLiBQZXIgdGhlIFBIWSBIUEcsIHRoZSBTd2luZyBhbmQgRW1waGFzaXMg
c2V0dGluZ3MgaGF2ZSBiZWVuIGNvcnJlY3RlZAo+ID4gPiB0byB0aGUgYXBwcm9wcmlhdGUgRFAt
bW9kZSB2YWx1ZXMuCj4gPiA+IAo+ID4gPiBBZGRpdGlvbmFsbHksIHRoZSBIUEcgc3BlY2lmaWVz
IHRoYXQgdGhlIExETyB2YWx1ZSBzaG91bGQgYmUgc2V0IHRvIDAgd2hlbgo+ID4gPiBpbiBEUCBt
b2RlLiBUaGVzZSBtaXNjb25maWd1cmF0aW9ucyBjYW4gbGVhZCB0byBsaW5rIHRyYWluaW5nIGZh
aWx1cmVzIG9uCj4gPiA+IGNlcnRhaW4gZG9uZ2xlcy4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYt
Ynk6IFlvbmd4aW5nIE1vdSA8eW9uZ3hpbmcubW91QG9zcy5xdWFsY29tbS5jb20+Cj4gPiA+IC0t
LQo+ID4gPiAgIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWVkcC5jIHwgMjcgKysrKysr
KysrKysrKysrKysrKysrKysrLS0tCj4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1lZHAuYwo+ID4gPiBpbmRleCAxM2ZlYWI5OWZlZWMuLjViMGQ3NzRiZDcxNSAxMDA2NDQKPiA+
ID4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMKPiA+ID4gKysrIGIv
ZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMKPiA+ID4gQEAgLTEyMiw2ICsxMjIs
MTMgQEAgc3RhdGljIGNvbnN0IHU4IGRwX3N3aW5nX2hicl9yYnJbNF1bNF0gPSB7Cj4gPiA+ICAg
CXsgMHgxZiwgMHhmZiwgMHhmZiwgMHhmZiB9Cj4gPiA+ICAgfTsKPiA+ID4gK3N0YXRpYyBjb25z
dCB1OCBkcF9zd2luZ19oYnJfcmJyX3YxWzRdWzRdID0gewo+ID4gPiArCXsgMHgwNywgMHgwZiwg
MHgxNiwgMHgxZiB9LAo+ID4gPiArCXsgMHgxMSwgMHgxZSwgMHgxZiwgMHhmZiB9LAo+ID4gPiAr
CXsgMHgxNiwgMHgxZiwgMHhmZiwgMHhmZiB9LAo+ID4gPiArCXsgMHgxZiwgMHhmZiwgMHhmZiwg
MHhmZiB9Cj4gPiA+ICt9Owo+ID4gCj4gPiBGb3IgdGhlc2UgcGxhdGZvcm1zLCBJIHNlZSA0IHRh
YmxlcyBvZiBzZXR0aW5nczoKPiA+IAo+ID4gKExvdy9IaWdoKSBTd2luZy9QcmUtZW0gZm9yIChM
b3cvSGlnaCkgSEJSCj4gPiAKPiA+IE5vbmUgb2YgdGhlbSBleGFjdGx5IG1hdGNoIHlvdXIgY2hh
bmdlCj4gPiAKPiBFbW0sIHRoaXMgdGFibGUgaXMgaW4gTGVNYW5zIGVEUCBIUEcsIGhlcmUgYXJl
IDYgdGFibGVzLiA0IG9mIHRoZW0gdXNlIGZvcgo+IGVEUCBtb2RlIGFuZCByZXNldCAyIHRhYmxl
cyB1c2VkIGZvciBEUCBtb2RlLiBJZiBteSB1bmRlcnN0YW5kaW5nIGlzCj4gaW5jb3JyZWN0LCBw
bGVhc2UgY29ycmVjdCBtZS4gVGhhbmtzIH5+fiA+IFsuLi5dCj4gPiAKPiA+ID4gLQlsZG9fY29u
ZmlnID0gZWRwLT5pc19lZHAgPyAweDAgOiAweDE7Cj4gPiA+ICsJbGRvX2NvbmZpZyA9ICFlZHAt
PmlzX2VkcCA/IDB4MCA6IDB4MTsKPiA+IAo+ID4gWW91J2xsIG5vdGljZSB0aGF0IHRoaXMgaXMg
ZnVydGhlciB3cm9uZywgYmVjYXVzZSBmb3IgZURQLCBpdCBzaG91bGQgYmUKPiA+IDB4ODEgYXQg
bG93LXN3aW5nLWhpZ2gtSEJSIGFuZCAweGMxIGF0IGxvdy1zd2luZy1sb3ctSEJSLCBhbmQgMCBh
dCBib3RoCj4gPiBjYXNlcyBvZiBoaWdoLXN3aW5nCj4gPiAKPiA+IFBsZWFzZSBzcGxpdCB0aGUg
TERPIGNoYW5nZSBpbnRvIGEgc2VwYXJhdGUgY29tbWl0IGJlY2F1c2UgaXQgdG91Y2hlcwo+ID4g
bW9yZSBwbGF0Zm9ybXMKPiA+IAo+ID4gS29ucmFkCj4gPiAKPiAKPiBZZXMsIHlvdSBhcmUgcmln
aHQsIGhlcmUgc2VlbXMgc29tZXRoaW5nIG5vdCBjb3JyZWN0LiBpIHdpbGwgc2VwYXJhdGUgdGhp
cwo+IGNoYW5nZSBpbnRvIHNpbmdsZSBvbmUuSGVyZSBhcmUgc29tZSBwYXJ0cyBJIGRvbid0IGZ1
bGx5IHVuZGVyc3RhbmQgaGVyZS4KPiBDb3VsZCB5b3UgcGxlYXNlIHBvaW50IGl0PyBIb3cgZG8g
d2Uga25vdyB3aGV0aGVyIGl0IGlzIGluIGxvd+KAkXN3aW5nIG9yCj4gaGlnaOKAkXN3aW5nLiBJ
IGRpZG7igJl0IHNlZSBhbnkgbG9naWMgaW4gdGhlIGN1cnJlbnQgY29kZSB0aGF0IGRldGVybWlu
ZXMgdGhpcy4KPiBBbHNvLCB0aGUgdmFsdWUgaW4gSGFtb2Egc2VlbXMgbm90IHNhbWUgd2l0aCBM
ZU1hbnMsaXQgaXMgMHg1MSBhbmQgMHg5MS4KPiAKPiBXaGlsZSBnb2luZyB0aHJvdWdoIHRoZSBI
YW1vYSBIUEcsIEkgbm90aWNlZCBhIHBvdGVudGlhbCBpc3N1ZS4KPiAKPiAgc3RhdGljIHN0cnVj
dCBxY29tX2VkcF9waHlfY2ZnIHgxZTgwMTAwX3BoeV9jZmcgPSB7Cj4gCS5hdXhfY2ZnID0gZWRw
X3BoeV9hdXhfY2ZnX3Y0LAo+IAkudmNvX2Rpdl9jZmcgPSBlZHBfcGh5X3Zjb19kaXZfY2ZnX3Y0
LAo+IAkuc3dpbmdfcHJlX2VtcGhfY2ZnID0gJmRwX3BoeV9zd2luZ19wcmVfZW1waF9jZmcsLi4u
SXQgdXNlCj4gZHBfcGh5X3N3aW5nX3ByZV9lbXBoX2NmZyBub3QgZWRwX3BoeV9zd2luZ19wcmVf
ZW1waF9jZmcsIGJ1dCBIYW1vYSByZWFsbHkKPiB1c2UgZWRwLXBhbmVsIGhlcmUuLiBzbyBkb2Vz
IHRoaXMgcGh5IGNmZyBjb3JyZWN0IGhlcmU/CgpBbGwgUEhZcyBzaG91bGQgc3VwcG9ydCBlRFAg
YW5kIERQIG1vZGVzLCBzbyBtb3N0IG9mIHRoZSBjb25maWd1cmF0aW9uCnRhYmxlcyBuZWVkIHRv
IGJlIHVwZGF0ZWQvZml4ZWQuIEkgdHJpZWQgZ29pbmcgdGhyb3VnaCBhbGwgdGhlIHRhYmxlcywK
YnV0IEkgbmV2ZXIgaGFkIHRpbWUgdG8gZG8gaXQgaW4gYSBzYW5lIGFuZCBjb21wbGV0ZSB3YXku
IEFzIHlvdSBzdGFydGVkCmxvb2tpbmcgaW50byBpdCwgd291bGQgeW91IHBsZWFzZSByZXZpZXcg
cHJvZ3JhbW1pbmcgZm9yIGFsbCBjaGlwc2V0cwpzdGFydGluZyBmcm9tIFNDODE4MFg/CgotLSAK
V2l0aCBiZXN0IHdpc2hlcwpEbWl0cnkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
