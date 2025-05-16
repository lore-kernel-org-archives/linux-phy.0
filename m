Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C71A9C3ABC9
	for <linux-phy@archiver.kernel.org>; Fri, 16 May 2025 10:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vi8pM21ueXm4eLiNBBUHZvDuupRFbBLUiRjDXLQiRFY=; b=2LV0nVZcynvTsW
	VoafIoYC7iB5ma9gQdrFxO92AgxF9h9lqefTpaZ0qRrGP6T2QA/WaHSpHr1gEr/faUf1sz6Pha3yL
	OhadoT4VoU7MEJSB8so18oMTA6fF0DeK5Vgt78zys9FMAeTQdhalHZp7vCpfWVcmV5UtmnQ5/kyV6
	Bni+Vv9r/xJa4vxnUXVoelilCexcNdPw3wSTXSBs1cu0wDOHYr7dpcUPJ7j697pLeBNuanqzgcOdS
	1djQM873tZbKeQScgA5R9ZP/ok08vw0FJSqjxseTQHjXftpqT3BhUFQS0Fx4V94wp60BgDYwjoRxQ
	jHElAjVaw9ruZSmBwq3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFsS2-000000039V2-2Q7Y;
	Fri, 16 May 2025 10:38:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFsJY-000000038NK-2ugA
	for linux-phy@lists.infradead.org;
	Fri, 16 May 2025 10:29:17 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54G4Mj5P014006
	for <linux-phy@lists.infradead.org>; Fri, 16 May 2025 10:29:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	J1Rlv9DJPlN8WQUQqRM+vg0Ho4hMW0bN34PmMACs0LY=; b=Mh5cU1vpS2vvPs3m
	P4YI91mGBOx94fN0jt+pAjvNAJY8pzAm+IHgVNi0prP3uD79bxry9ddHpCFlUBEn
	0vYFMkeExKP6IEEKDC9UsNlR1eDJL0N2i31w6PUFvpVoEHbwqPUh3AW3wD8hvCPd
	WMp7ZIteXIOFMz7ybxpRYl9hDjLvhsqZqSAqe+plnZ+DcV/o1KLIw4nSvRFUCTup
	YTEH3ED+urLVoJyVRyTuSeFgQhlbSQ3dOfEYU1ll4zoqpqY/4xKudw4jmte/bY60
	nH1qqz2wlNtuHqzqLr2JQsv4WsglL+ejGwvbcTcEHPu4wk93VJMWvCdri8KJ0H38
	qLLm8A==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46nx9js210-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 May 2025 10:29:15 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-22e816139b8so17443465ad.3
        for <linux-phy@lists.infradead.org>; Fri, 16 May 2025 03:29:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747391355; x=1747996155;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J1Rlv9DJPlN8WQUQqRM+vg0Ho4hMW0bN34PmMACs0LY=;
        b=jbYRO4nECUPFRsf+/IeKA52wsnt0IviuEk7CGGUxbbYcm+T/HmmbuqzLsgjp4DpE3+
         fVdLaTmQYt6isDAD/m/80QTiRfKgLM6LkycApky2j8mTk8FQxd4MvbhC3lRuFEghBAEt
         ycoHHfh3JKUJ1zYUIMM/ONTj3C7tobRzm3yzNSSvpLkh9gAFFYCS9Pm5zsHM7qPtjdlH
         eGUdKr1DlTO/M2uPGw/EkyqSah7Bh61wSkcKF03dtdPc7SxnrWgFsSbEgXO7c0J1hLkI
         mPHQpBXAQje+z9IaGU8fKgsT/atWBFXRMfI9206Kr8m+079wbLTCOdh0mKVoXwcUOPzg
         FOUA==
X-Forwarded-Encrypted: i=1; AJvYcCVtPo1hIHH+V92DtWKyXKZnX6SEmdZRfDe9oV7UarsMzxwziduxcNpHFV5hSuCjwsKJw2X5PisTgbY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzJZXwHhbECdawPYtlAmDPyW05o07xHAuBEQGqyK3cJWAx7f2bW
	J1oa1Lu/a7W7FOMULUQ1Mnyk3ds+xf1+tJGUZev0owKUd7SjMMj7KUq5Eo5o0LmpHNAhTBNBty8
	FYmyBajaeZEXYcLtvVNqCv8wIWlTDXRM0bKmsTmLL8veHjKyGgsdl4SNNfihxvRDQ9SzyYbsQGO
	3o81WLutPU+Qz5TDzVbIC9AYeKQY0R074jB1eQTS1+vYI=
X-Gm-Gg: ASbGncsLS3BC2Rv/s14MRkRQu1p+bF836KVsdcqls5pnO/vn6pwdGy5GU+MWoibIzZ+
	RatW8IIB0bqG2YfEXlSMdDKX/wk386+q9E0UxhbUoVAY10JPFKY6R1jvlBlUdxGmmcVvMxQ==
X-Received: by 2002:a17:902:ccc1:b0:225:abd2:5e4b with SMTP id d9443c01a7336-231d43a18c8mr37734325ad.16.1747391354580;
        Fri, 16 May 2025 03:29:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFZAc+CeMJekoQFW7pX27l11esuS+Ik/pvnn5IvCnGgOf5pBzK5VCsUKGY1MWIIJgATFPYlOTgG+hSzTf1RdEo=
X-Received: by 2002:a17:902:ccc1:b0:225:abd2:5e4b with SMTP id
 d9443c01a7336-231d43a18c8mr37733975ad.16.1747391354168; Fri, 16 May 2025
 03:29:14 -0700 (PDT)
MIME-Version: 1.0
References: <20250514-update_phy-v2-0-d4f319221474@quicinc.com>
 <20250514-update_phy-v2-2-d4f319221474@quicinc.com> <8ba99df8-012b-4883-af6a-970dd9f877f6@linaro.org>
 <f5e1510f-3496-4f5e-b093-623d3b4be428@oss.qualcomm.com>
In-Reply-To: <f5e1510f-3496-4f5e-b093-623d3b4be428@oss.qualcomm.com>
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Date: Fri, 16 May 2025 15:59:02 +0530
X-Gm-Features: AX0GCFsiaMZlXOS05wODRIxixqHxUY50BuquyqtK7dKtFH-53SX-bL5lc5kBz7Y
Message-ID: <CAMyL0qPH2r8oXOrNp3jF-nBJCRCZzJr8rYrHn+Yp0MHR0Wy-vw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_nayiluri@quicinc.com,
        quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>
X-Proofpoint-ORIG-GUID: rfS5N-j_wY2zIqqgvnfuQm8bzyLRzgaL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE2MDA5OSBTYWx0ZWRfX4JISg+thP1Ov
 7Ft2kDXUjHO1zpYzIoKR7/j5Y5K6E8/GNaYSZ/FsiJz/TSXmXN4vXFA6diHATNZOYYKyENnmZ++
 /s3axgmjLNBR+YU51myc5msQqZsZXPW+NE3Uz1rWKz/vywj1ysiISX8j2EhULzcwTkUR53Nki0p
 fmmEl7Bl/LUTaY/rB28rSFV3e88TVxEKNR+iBV3AeSaZ5JeeK/Fy5/cpjuFGy4aEBh06pXn2b9s
 Gjy7aiYzx8OXbixlOShYNKL2YV8Ps6TTBaOXmm42CiJ24nqXM1ZFe1X9tqUIhYrs+VaRJBYC7Rj
 cw240KOj4BHbWYyQtZg5TNkhwcf9jZ9tk05F6aqYfIiE574wIZK2nb4weB5t3TAh9xjqvC0h4FA
 P8KFS9WIXLArJjDSwxU/6r60QIAAReqIMHn5RYzOpR0Q0/SFc2mJzF24ymRkknmP9L4w+SOu
X-Authority-Analysis: v=2.4 cv=CIIqXQrD c=1 sm=1 tr=0 ts=6827137b cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=U-jVYuukGFQHpZbOjhcA:9 a=QEXdDO2ut3YA:10
 a=ZXulRonScM0A:10 a=GvdueXVYPmCkWapjIL-Q:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: rfS5N-j_wY2zIqqgvnfuQm8bzyLRzgaL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-16_04,2025-05-16_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 mlxscore=0 suspectscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=939 spamscore=0 impostorscore=0 clxscore=1015
 priorityscore=1501 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505160099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_032916_744867_E2FA298E 
X-CRM114-Status: GOOD (  18.59  )
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

T24gRnJpLCBNYXkgMTYsIDIwMjUgYXQgMjozMOKAr1BNIEtvbnJhZCBEeWJjaW8KPGtvbnJhZC5k
eWJjaW9Ab3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4KPiBPbiA1LzE0LzI1IDY6MzggUE0sIG5l
aWwuYXJtc3Ryb25nQGxpbmFyby5vcmcgd3JvdGU6Cj4gPiBPbiAxNC8wNS8yMDI1IDEzOjM3LCBN
cmlubWF5IFNhcmthciB3cm90ZToKPiA+PiBGcm9tOiBNcmlubWF5IFNhcmthciA8bXJpbm1heS5z
YXJrYXJAb3NzLnF1YWxjb21tLmNvbT4KPiA+Pgo+ID4+IFRoZSBtYXhpbXVtIGxpbmsgc3BlZWQg
d2FzIHByZXZpb3VzbHkgcmVzdHJpY3RlZCB0byBHZW4zIGR1ZSB0byB0aGUKPiA+PiBhYnNlbmNl
IG9mIEdlbjQgZXF1YWxpemF0aW9uIHN1cHBvcnQgaW4gdGhlIGRyaXZlci4KPiA+Pgo+ID4+IEFk
ZCBjaGFuZ2UgdG8gcmVtb3ZlIG1heCBsaW5rIHNwZWVkIHByb3BlcnR5LCBTaW5jZSBHZW40IGVx
dWFsaXphdGlvbgo+ID4+IHN1cHBvcnQgaGFzIGFscmVhZHkgYmVlbiBhZGRlZCBpbnRvIHRoZSBk
cml2ZXIuCj4gPgo+ID4gV2hpY2ggZHJpdmVyLCBQSFkgb3IgQ29udHJvbGxlciA/Cj4KPiBDb250
cm9sbGVyLCBzZWUKPgo+IDA5NDgzOTU5ZTM0ZCAoIlBDSTogZHdjOiBBZGQgc3VwcG9ydCBmb3Ig
Y29uZmlndXJpbmcgbGFuZSBlcXVhbGl6YXRpb24gcHJlc2V0cyIpCgpZZXMsIHRoaXMgcGF0Y2gg
aXMgaGVscGluZyB0byBzb2x2ZSBnZW40IHN0YWJpbGl0eSBpc3N1ZS4KPgo+IGFuZCBjb21taXRz
IGFyb3VuZCBpdAo+Cj4gZG9lcyB0aGlzIGNoYW5nZSBkZXBlbmRzIG9uIHRoZSBwYXRjaCAxIFBI
WSBzZXR0aW5ncyB1cGRhdGUgPwo+Cj4gVGhhdCBJJ20gY3VyaW91cyBhYm91dCB0b28sIGJ1dCBJ
IHdvdWxkIGd1ZXNzdGltYXRlIG5vCj4KdGhpcyBjaGFuZ2UgZG9lc24ndCBkZXBlbmRzIG9uIHRo
ZSBwYXRjaCAxIFBIWSBzZXR0aW5ncyB1cGRhdGUKCj4gS29ucmFkCgpNcmlubWF5CgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
