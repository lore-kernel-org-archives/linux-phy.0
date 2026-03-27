Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F46810F2865
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 20:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8zicBTFz0lefAc4eEWyFQq49PB54WzP+YQs6AXaoCog=; b=H74vvq5ftpwKtp
	QL9Rn6VgRiQpaDqjf+/9ediWqCIIx5YuWbvIAP8NbykxLFWnKBQJMk3gs8/4DrHXC+A/hSV/LvHEx
	zg0UazoYbbvbsO5I0vzPFPPLAwQeSeI9hnjMokwK9bW4hi8kMdHus+viesW/1eiB9gEqcP6fbWgYe
	eU3PwDCDB9QhWGAJsXK2HY/T1X+/qzug2IxXwfYiEwXKynOAIYTL0OcL2XoW4Q6d1sF1zEVBTOQCE
	zcXlZYRy/sdWNvwS3UkER6RCKumPGQuaXpjRuc+VzLY70dtWM2l/CRhz1vnRiQ9YbxZW1KHMbkdZD
	oThV2xF0fcrP6LiuHGJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6EFN-00000008Cin-3Om8;
	Fri, 27 Mar 2026 20:57:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6EFK-00000008CiF-2210
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 20:57:35 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62RKtuEx452415
	for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 20:57:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9hTL8fv6F5+YUvvE9I81wouOi3oe8icc6uFeLj6rzIg=; b=TdUM0fI09AxvJtGf
	FcjzjcRSYewmqVNJ38IVNdKBO7SlsUqhrtmrpJtlTpUwRRwj79m/AcukyY4HtVXc
	yEFIVR+vK5UCi47JIcnpLBD+PclvfJ3nXvs8w546fAu9ZS9QCiyd/a3m6YlHeTj9
	ShhsKJt7IpPEJzuZwa85WF/YLIdlhHipo7GoC16VSfG5a8FdLkBJz1/zlmu2qCiH
	6bHru+G1jjR4eH1Zk6zfjar6NwZGvcrx/bAwwGLE9hWy40zBuwaUIcxbd5wVIX68
	H8wB4h7T7mwQRG7aN+Hz9U2Eb9n4L8xsEY0+QhdqrUvjSqs5sdZ8T4HJJSff8+r/
	jRgFOg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d5jcx3fby-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 20:57:32 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50b4fe4ff7bso117184861cf.0
        for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 13:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774645052; x=1775249852; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9hTL8fv6F5+YUvvE9I81wouOi3oe8icc6uFeLj6rzIg=;
        b=O+CFwCLq+/Zl1NrGQs3IgBDBXPk0QceNh0f4ZXzSvukAoGvYa9azrnOnfx0UDdBk4M
         5dlbtzyj2pIUZGdcmq2Lzz5ZAzxebgesjmGfJeucth2Ja7mcUmyDOxmuqTMZsuDZU9pD
         du3/y0TmH2NG6x2HNDKX/gh2rusTsf3+1J/ZSkRfQH0mwX9xLKI7j/QaWTLBaO+Zl1j0
         Lsa8xb/fOHDIBQsQpPRRLjklySJypFxGQPmdgx4AWkvQ9MqZ1iVRoaUPDGz4K5tW7HHb
         jyr91b7jbc/+BHnoMundgNPWS3e4Q2Nt+LOjjjl6TkfiG8dLAvhLZv8Uwe6chHhCiyvc
         JcnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774645052; x=1775249852;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9hTL8fv6F5+YUvvE9I81wouOi3oe8icc6uFeLj6rzIg=;
        b=AqHRwOqArq3JP8LqRajpmXDXoQyHRbrlrSkAeleuo+9dZL4GoyHLXO+jeoudxQeyi+
         HBvmqYsOG7Y8f0+NS3mdqo2N4PAvnxaVUoA2S7IEYa4mUGgthtugZm+Czel/vi3ChK1Q
         7VNVSWVlg7M4Vt7w9iZ2h0faoibrhDC5q00XAv0RANbBJTZSIRqa2bJTFtd+i9GsdaW7
         wVElv6HEOYY26ARSBi0FByTn+j3dveH4Cc4G1e9yRAKDMb4U+xZL8VlVpZ50mLNZPd+N
         iVYwkSHNZvnGmH0EVA0PDzOqkMIfNd9YeDnUg7MQ+/SDVbclPwMhx3gNiuVRxDtzAMkC
         oaiw==
X-Forwarded-Encrypted: i=1; AJvYcCWFgOfJ4zDc0iMh2hL5qw5JNID3qxX4SLY9LJzqR1LJfFu1WpP70vdOicfs4l9FpASMtukRIvTkNpc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxRJBzoAnzGkPD96vUU9p6lgnxmgrYRVcEZuxmcZFAjp9rJ0Qn8
	uADXQPHSceCN70FgrHPeIrP2rwDY962Bf5I8SPLmCZb5GxMvpbt+SoV3M2CoQOR77lWJSDkKXol
	AXdzcZa9tUsPmvgHdXpELqv0/tboWSMlg1ToNmQ16cl3WJSHL6Wpumks1CptEIHcDGk1C
X-Gm-Gg: ATEYQzyI1mLdAjiQEUUIfxIl/RZq2M/A/4N4hkz0jxEPR/ZCk+/T08nzkonJaz+Z0io
	rptoGynKnWSyXuFUAq1IU/z7pTp+QtA5gK8Tg5Hp9svARZ6Vc44lQ9CMPyvyPBfnyfl5IhPer0W
	98vf5heowr22x7UCz206gJKDyIP0svQekHf1FpMApzT0N35iBJDPKf5kW3MhHwmuznS7r4CSiZ3
	TQ9FtfoSZB4A7n3bFHLA4p4pBIpXr1Upk/WrhERXBTc4cj19XY5OWOZlGxt/fY7wv+qHEWcpqlb
	Yo1D8dCX+N4GBaK3Mj7XbCATzX7IRxvfxUHXtUUfvqPnTwmUUFnYp46u0tB1ReyvvFb92uCa73e
	R7HZVFZjJI1DSTLMlEewj9po9RmDljySQzWRwKPUPwpzIDYmDy4LuNEb+gyZJ5sbnQvEQ75gBWw
	PGFKmtX78IedLRdBwpX7LOir+NdOH4JLHnK1M=
X-Received: by 2002:a05:622a:1b86:b0:509:e46:84ea with SMTP id d75a77b69052e-50b995172e5mr85163391cf.34.1774645051681;
        Fri, 27 Mar 2026 13:57:31 -0700 (PDT)
X-Received: by 2002:a05:622a:1b86:b0:509:e46:84ea with SMTP id d75a77b69052e-50b995172e5mr85163171cf.34.1774645051210;
        Fri, 27 Mar 2026 13:57:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38c838931b9sm731601fa.23.2026.03.27.13.57.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Mar 2026 13:57:30 -0700 (PDT)
Date: Fri, 27 Mar 2026 22:57:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
Message-ID: <pnoln5mv27yuwirh67x5slhvswy3iv7q6tlzoj7zvaxtrpgtgl@bom6zvjrbkwi>
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-2-0c0fc7f5c01b@linaro.org>
 <bc6abd24-d56a-4fc0-89e9-8986e8d8b3b7@oss.qualcomm.com>
 <27adcbd2-0ec3-4a8f-84d6-ba381a66772d@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <27adcbd2-0ec3-4a8f-84d6-ba381a66772d@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=NfTrFmD4 c=1 sm=1 tr=0 ts=69c6ef3c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=dqlpYPTLeaRY0p4CLEMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: UtFlM9xLbE677akebFGHpi7NgF7epIuR
X-Proofpoint-ORIG-GUID: UtFlM9xLbE677akebFGHpi7NgF7epIuR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzI3MDE0NiBTYWx0ZWRfX6QonASPMUN7V
 C1zvlScECCYdU5uQrw7kPIwecn6p8RBMt+JwPhAikfBXlbhr7jYnmzzBzwQx+BTNmZtWqrclp+O
 JAmVn4u4ikdZEdJ633ovB3tW7a0VjRokD9PWLp4AqAsu8jAg1PDq+55J3UjBzuHFvR9V0RiAUNJ
 m75JT/1vU7zygsTvQoLAV7Wx6SdJc/3E4BcjD+7v22QDekbedYxJ+eYCiB4a5WT3PIzCVbjAdZC
 T26khFlpDazz1s73VhX3wY6xcpNjO9+GWWVoC96LmKBlEQxAYUk+neAIHLVnKoX8898nRX3kG8y
 A+cAZCMRvkd8Z/hIEmhtNqhN/NI370PIuV1GfpOIXkFh6leVNviuYLYoDeo8ESWafweaqq2K+P0
 pzHp1BlaXOMvehpKh9jctzA+DUxyk+zDDkNJT40pQNkfLtcraXjDEWsYyChlFSl8n7iyPkZfPJI
 LrlYS5CDGpH1+/Tol9Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-27_01,2026-03-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 spamscore=0 bulkscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603270146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_135734_665229_2036111B 
X-CRM114-Status: GOOD (  20.71  )
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

T24gRnJpLCBNYXIgMjcsIDIwMjYgYXQgMTE6MDc6NTNBTSArMDEwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBPbiAzLzI3LzI2IDM6MjMgQU0sIEhhbmd4aWFuZyBNYSB3cm90ZToKPiA+IE9uIDMv
MjYvMjAyNiA5OjA0IEFNLCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+ID4+ICsjaW5jbHVkZSA8
bGludXgvZGVsYXkuaD4KPiA+PiArI2luY2x1ZGUgPGxpbnV4L2ludGVycnVwdC5oPgo+ID4+ICsj
aW5jbHVkZSA8bGludXgvaW8uaD4KPiA+PiArI2luY2x1ZGUgPGxpbnV4L3RpbWU2NC5oPgo+ID4+
ICsKPiA+PiArI2luY2x1ZGUgInBoeS1xY29tLW1pcGktY3NpMi5oIgo+ID4+ICsKPiA+PiArI2Rl
ZmluZSBDU0lQSFlfM1BIX0NNTl9DU0lfQ09NTU9OX0NUUkxuKG9mZnNldCwgbinCoMKgwqAgKChv
ZmZzZXQpICsgMHg0ICogKG4pKQo+ID4+ICsjZGVmaW5lIENTSVBIWV8zUEhfQ01OX0NTSV9DT01N
T05fQ1RSTDBfUEhZX1NXX1JFU0VUwqDCoMKgIEJJVCgwKQo+ID4+ICsjZGVmaW5lIENTSVBIWV8z
UEhfQ01OX0NTSV9DT01NT05fQ1RSTDVfQ0xLX0VOQUJMRcKgwqDCoCBCSVQoNykKPiA+PiArI2Rl
ZmluZSBDU0lQSFlfM1BIX0NNTl9DU0lfQ09NTU9OX0NUUkw2X0NPTU1PTl9QV1JETl9CwqDCoMKg
IEJJVCgwKQo+ID4+ICsjZGVmaW5lIENTSVBIWV8zUEhfQ01OX0NTSV9DT01NT05fQ1RSTDZfU0hP
V19SRVZfSUTCoMKgwqAgQklUKDEpCj4gPj4gKyNkZWZpbmUgQ1NJUEhZXzNQSF9DTU5fQ1NJX0NP
TU1PTl9DVFJMMTBfSVJRX0NMRUFSX0NNRMKgwqDCoCBCSVQoMCkKPiA+PiArI2RlZmluZSBDU0lQ
SFlfM1BIX0NNTl9DU0lfQ09NTU9OX1NUQVRVU24ob2Zmc2V0LCBuKcKgwqDCoCAoKG9mZnNldCkg
KyAweGIwICsgMHg0ICogKG4pKQo+ID4+Cj4gPiBIaSBCcnlhbiwgb25lIG1pbm9yIG9ic2VydmF0
aW9uIG9uIHRoZSBmb2xsb3dpbmcgbWFjcm86Cj4gPiAKPiA+IMKgwqDCoMKgQ1NJUEhZXzNQSF9D
TU5fQ1NJX0NPTU1PTl9TVEFUVVNuCj4gPiAKPiA+IFRoZSAweGIwIG9mZnNldCBpbXBsaWNpdGx5
IGFzc3VtZXMgYSBmaXhlZCBkaXN0YW5jZSBiZXR3ZWVuIHRoZQo+ID4gY29tbW9uX2N0cmwgYW5k
IGNvbW1vbl9zdGF0dXMgcmVnaXN0ZXIgYmxvY2tzLiBUaGlzIGhvbGRzIGZvciB0aGUgUEhZcwo+
ID4gY292ZXJlZCBieSB0aGlzIHNlcmllcywgYnV0IG9uIHNvbWUgb3RoZXIgcGxhdGZvcm1zIChl
LmcuIEthYW5hcGFsaSwKPiA+IFBha2FsYSkgdGhlIG9mZnNldCBkaWZmZXJzLgo+ID4gCj4gPiBU
aGF0IHNhaWQsIEkgdGhpbmsga2VlcGluZyB0aGlzIGZpeGVkIHZhbHVlIGlzIHJlYXNvbmFibGUg
Zm9yIHRoZSBzY29wZQo+ID4gb2YgdGhlIGN1cnJlbnQgUEhZIHNlcmllcywgYW5kIGl0IGRvZXMg
aGVscCBrZWVwIHRoZSBtYWNybyBzZXQgc2ltcGxlLgo+ID4gSXQgbWlnaHQganVzdCBiZSB3b3J0
aCBkb2N1bWVudGluZyB0aGlzIGFzc3VtcHRpb24gKGUuZy4gdmlhIGEgY29tbWVudAo+ID4gb3Ig
aW4gdGhlIGNvbW1pdCBtZXNzYWdlKS4KPiA+IAo+ID4gQWx0ZXJuYXRpdmVseSwgaWYgZnV0dXJl
IFBIWSB2YXJpYW50cyBuZWVkIHRvIHN1cHBvcnQgZGlmZmVyZW50IGxheW91dHMsCj4gPiB0aGlz
IGNvdWxkIGJlIG1hZGUgbW9yZSBleHRlbnNpYmxlIGJ5IG1vdmluZyB0aGUgc3RhdHVzIGJhc2Ug
b2Zmc2V0IGludG8KPiA+IHRoZSBwZXItUEhZIGRhdGEgKHNpbWlsYXIgdG8gb3RoZXIgcmVnaXN0
ZXIgbGF5b3V0IHBhcmFtZXRlcnMpLiBCdXQgSQo+ID4gZG9u4oCZdCB0aGluayB0aGF0IG5lZWRz
IHRvIGJsb2NrIHRoZSBjdXJyZW50IHNlcmllcy4KPiAKPiBJZiB0aGUgcmVnaXN0ZXIgY29udGVu
dHMgYXJlIGdlbmVyYWxseSBzaW1pbGFyIGJ1dCB0aGUgYml0IHBvc2l0aW9ucwo+IGFuZC9vciBy
ZWcgb2Zmc2V0cyBkaWZmZXIsIHJlZ21hcF9maWVsZHMgbWF5IGJlIHVzZWZ1bAoKT3IgcGxhdGZv
cm0tc3BlY2lmaWMgc2V0IG9mIG1hY3JvcyAvIHJlZyBhY2Nlc3NvcnMgKGFzIGl0IHdhcyBkb25l
IGluClFNUCkuCgo+IAo+IEtvbnJhZAoKLS0gCldpdGggYmVzdCB3aXNoZXMKRG1pdHJ5CgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
