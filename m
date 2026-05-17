Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D722CD4F3C
	for <linux-phy@archiver.kernel.org>; Sun, 17 May 2026 19:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3pUjihcKaDxH1hohoE20ODE5DYAZjJ1BR3uzrWDOqfU=; b=k2rYsi/PVUiD26
	PiTzG56lBEkXWzrDFjgTPG0olgfCMyRxWEE88oWkJt/pjWGwEWzXd4NAvce9hR98ZyFTeWuYynUk8
	pbvww2Ag1BJAGylMlWq36mLzFHp22qV9jKX2uBBfA3OsrukbmYQmZtDt52MaXY7CkfGk+dDJLS7Lz
	LphkjXGwLnERdF2vmOGepX1U0wkpzkd9sx0+MJ1Vfy9p+f3zF/XbgVkgHtln0p1aCJb29dr+C/0Aq
	Ajnlwifcbtnmkl+tiVWAvGCHfhSLlK1RVhPWhlxDJwo6wIEoSWtNK655sywbtYXdvniJiZ9iKOEx6
	uBXtJvgCSpQi1nGl9duQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOgod-0000000DIU0-3Qm4;
	Sun, 17 May 2026 19:06:19 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOgob-0000000DITa-2Eea
	for linux-phy@lists.infradead.org;
	Sun, 17 May 2026 19:06:18 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64H0idJB2413723
	for <linux-phy@lists.infradead.org>; Sun, 17 May 2026 19:06:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5CTp7WWFll3OVumVrIQDCRGiPwlHUxMe6Ct4Tld7Hi4=; b=ACmHOvnpQPi5Zhuq
	lHPwg6xZ3Q33aOjHXKqG/xofPsZZ8QovFsSbr//uC5cOusHZ6sr5oqFroOqLyWza
	iKBnfaK9D50elFGiFSk5cQiVYElWN3BgbHU60Uw5Zse2NmOI9KyGmGw9k6j+GR7g
	OSX/YWQHVcHniwHZZAe3ll+H3XxPw244PCzigUubsBI0lGEFRZJgkp/eaLXDfouj
	KSQ1/i/Iz9U6ZHh2i2tYjQCax+Vr6mxJSNB8JYAvTdD1JPR4sI+LPyt//hLXUgMy
	sWvFkoRX0EMPOzzghp35RCXkFof3OOy9vExE9bJ9qZRwGxsy6y+jdVoxU4tx7WD4
	osi7ig==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e6tvcja7w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 17 May 2026 19:06:16 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-82fd55bf6cdso911635b3a.3
        for <linux-phy@lists.infradead.org>; Sun, 17 May 2026 12:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779044776; x=1779649576; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5CTp7WWFll3OVumVrIQDCRGiPwlHUxMe6Ct4Tld7Hi4=;
        b=OhFRdatRD9u2ddwnWDDyfIXzjjHKzFVJNOsGX2grpXj+ol8deDByeUqExiEQ2AEkoL
         rSKanADp9RpVnds+/30tTHi8QVd8dOTjKB2EcbaYLYhbKhiIPy4iimlebP0gngvIgfbF
         HUnc5MyDhLyI0dak26ax3ZjBnnqmR4ZQuWEqDhnyZZU97qbYyZwEFGjMqu/+U2Zptl+D
         ifpH2MydoQMo7dgpKKSu0YUEVX5Hl6FKtYFLR5URYZGBak7Hx/TnrtnCq1DzJ3SqZ+Uj
         gLFHwqaKdN5I2tNqMbubRsKGzGo8joertYX31crsvQEv6FCZXPb72t+pA9A80r34N0Nc
         qlIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779044776; x=1779649576;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5CTp7WWFll3OVumVrIQDCRGiPwlHUxMe6Ct4Tld7Hi4=;
        b=nrXmR8vRO6z2oORwtZHYh3/6GVE5Vsg1AdUP+AIwXXR5BW9GQah7LMf+7xYr/0eVzg
         ntyTmnTHNc0I3I7LKpq0lutWVRyL78cI55tF7dlyHgn8y+gNFHZiiy9uZbsr1hnZ9DzZ
         jwNzBcrlvazDpNllp952e/xVwVkAy3BimHm5FMtOPMRPjpWD/aXXB4v4p5En4Zfm9nyf
         Q6KvRWfGrosAgW+h4tMyd1YIU157KEpN4+C8WPV5UgtoG8uFx1/pGu8kVCD2fT/9ocCU
         q73sAOq1CJF2hqdzw07eGgkmcS+vkEpPDffF0bn9NpZgE8zWeIMQbhUUMYkwagUYNiVX
         Uhpg==
X-Forwarded-Encrypted: i=1; AFNElJ+5qL+XaXZsyMPgJySQ+XwBB3hpzjwqfRSrGncElHY4zQeuvB0Wx+MjohbQyITXhLCPkKv9gOtOJHE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1kk1FrPP3AjIN0BmIBUpQTPWtM5gG7NQ9ypfk0F4Wn1mFwZLs
	DlDylQXx04Looeb8nYM+04Z14jBg91igKt1ZpVMGseOIpI3Y102EL0GAVlIbYtQFMuTNxHignBk
	HP0ZcHNOWsnp1EkC8qLGnbur9AYT+SFaTZlvkCjLyNSjLFOG2bCbCOtHeLqVKYjbmav8G
X-Gm-Gg: Acq92OHJWo0Hb6WOJR9fygpToLp9c19CZbmsfCX3igSB1sXoDfr0pwVhZPFVIEyRCvm
	ua5WdrAHe9zsDwMs+ips8xFyYFnEi4XYhVQlbzdGe+NfiAD7i3jFmZorgj5FeUSJR9bpkPQmCNr
	QzU2Y4axqqD0UuBr6dZVPxcxkGEUUtXUFghzp8lkwPxrC6xYHb0SjhWYgvZg8JJIpV8i8uhbC7c
	NgvCrMIpc4GbxbZCOGJ2nez1WzEikqU3M/NyukLrioApP1ScX8CzQS2KOF6stfwJaV56PNjLBFF
	ex2MnUy7oj5kvNBcBCxI1EcAsqyu6IPAsGoO8gYdPVMttSWFOlHOr2YvShqGsFBALJXjbMOArcp
	+NNQk8MwpmdJFpIGGq6Xhko154SI5tvg0coveJsf0eWqUZc0utLQ=
X-Received: by 2002:a05:6a00:4fc8:b0:82f:84c6:6510 with SMTP id d2e1a72fcca58-83f33c961c7mr12510755b3a.11.1779044776080;
        Sun, 17 May 2026 12:06:16 -0700 (PDT)
X-Received: by 2002:a05:6a00:4fc8:b0:82f:84c6:6510 with SMTP id d2e1a72fcca58-83f33c961c7mr12510718b3a.11.1779044775544;
        Sun, 17 May 2026 12:06:15 -0700 (PDT)
Received: from [192.168.29.166] ([49.43.235.85])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-83f19f8b8b3sm11579843b3a.59.2026.05.17.12.06.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 May 2026 12:06:15 -0700 (PDT)
Message-ID: <6df56ddd-3cc2-414b-882d-641277ce1a66@oss.qualcomm.com>
Date: Mon, 18 May 2026 00:36:04 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: Add Shikra CQM and CQS EVK boards
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>,
        Xueyao An <xueyao.an@oss.qualcomm.com>
References: <20260512-shikra-dt-v1-0-716438330dd0@oss.qualcomm.com>
 <20260512-shikra-dt-v1-4-716438330dd0@oss.qualcomm.com>
 <mw2ipu5z26ubmrg6qe2v36cp6ktkqtbpfe3hmr434qdgm66nz4@pu6yy7hw4n3t>
Content-Language: en-US
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
In-Reply-To: <mw2ipu5z26ubmrg6qe2v36cp6ktkqtbpfe3hmr434qdgm66nz4@pu6yy7hw4n3t>
X-Proofpoint-ORIG-GUID: 3AkQTdUKWLp55XykQiksQYFb-petRwjV
X-Authority-Analysis: v=2.4 cv=UIDt2ify c=1 sm=1 tr=0 ts=6a0a11a8 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=g4/7f0GlZvY0MGcqtTB0Sw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=4NbkJTruBT-5dyiUZdQA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 3AkQTdUKWLp55XykQiksQYFb-petRwjV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE3MDIwNCBTYWx0ZWRfX1+bzhif2iOf/
 aetnW7cT8JFUd9ovi/sc0Dz2Gh8QbFhLan8HQpltL2b9JOmVEmg+HudwHzi0H+BptC5T4WUQSwu
 Gd+gj+lbMwUnqtWWwfdwbRkqB8S1NJeeqn92EVyO/n26GqmHEIyjZkcYVZs7B+7qciWHL6pDhNs
 bcbMOph64z4RJvTOruw38FdJSRFCxubTmVLKinJKJP7hNq1kl7CWykwWPuSFZ2LuZhbBGhu5p4w
 +e33Zj0F3VBz+V0i2Qo2V+HQSXQdJ6MPS5a79WoVSGsICWZTrva0/TJgtDXDkQBQMCv9z6n213m
 eB8Hq+GJQlCXunMbpk9HmduPg5Tmv+boVoxvPLDvkHDDEqB7SI+lDOLkStetXkaPxcFzqExygEJ
 Up/dNNb97iwA3LvMUrBOzZYuqgEwfcgVVx1sqxtMdWzAnEq9oMZ671eo51UM1snCzS1fBT9iVjS
 LFyCCXsL2NlUNQIK4Gw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-17_04,2026-05-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 bulkscore=0 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605170204
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260517_120617_583098_656F0128 
X-CRM114-Status: GOOD (  18.31  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gNS8xMy8yMDI2IDU6MzQgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gVHVlLCBN
YXkgMTIsIDIwMjYgYXQgMDk6Mzg6MDdBTSArMDUzMCwgS29tYWwgQmFqYWogd3JvdGU6Cj4+IEFk
ZCBkZXZpY2UgdHJlZXMgZm9yIHRoZSBTaGlrcmEgRVZLIHBsYXRmb3JtLCB3aGljaCBjb21iaW5l
cyB0aGUgQ1FNCj4+IFNvTSB2YXJpYW50IHdpdGggYSBjb21tb24gY2FycmllciBib2FyZC4KPj4K
Pj4gVHdvIEVWSyBib2FyZHMgYXJlIGludHJvZHVjZWQ6Cj4+ICAgIC0gc2hpa3JhLWNxbS1ldmsu
ZHRzOiBwYWlycyB3aXRoIENRTSBTb00gKHJldGFpbCwgd2l0aCBtb2RlbSkKPj4gICAgLSBzaGlr
cmEtY3FzLWV2ay5kdHM6IHBhaXJzIHdpdGggQ1FNIFNvTSAocmV0YWlsLCBib2FyZCBoYXMgbm8g
bW9kZW0KPiBDUVMKCkFDSwoKPgo+PiAgICAgIHN1cHBvcnQpCj4+Cj4+IEFsc28gYWRkIHNoaWty
YS1ldmsuZHRzaSBjb21tb24gYWNyb3NzIGJvdGggRVZLIGJvYXJkcy4KPiBXaGF0IGlzIHRoZSBz
cGxpdCBiZXR3ZWVuIHNoaWtyYS1jcVttc10tZXZrLmR0cyBhbmQgc2hpa3JhLWV2ay5kdHNpPwoK
c2hpa3JhLWV2ay5kdHNpIHJlcHJlc2VudHMgdGhlIGNvbW1vbiBjYXJyaWVy4oCRYm9hcmQgYW5k
IGRhdWdodGVy4oCRY2FyZCAKY29uZmlndXJhdGlvbiBzaGFyZWQgYWNyb3NzIGFsbCBTaGlrcmEg
RVZLIHZhcmlhbnRzLCBpbmNsdWRpbmcgQ1FNLCBDUVMsIAphbmQgdGhlIHVwY29taW5nIElRUyBi
b2FyZC4gSXQgY3VycmVudGx5IGVuYWJsZXMgdGhlIGRlYnVnIFVBUlQsIGVNTUMsIAphbmQgVVNC
IGFsb25nIHdpdGggdGhlIHJlcXVpcmVkIFBNSUMgcmVndWxhdG9yIHN1cHBsaWVzLgpJbiBmb2xs
b3figJF1cCBzZXJpZXMsIHRoaXMgZmlsZSB3aWxsIGJlIGV4dGVuZGVkIHRvIGNvdmVyIHRoZSBy
ZW1haW5pbmcgCmNvbW1vbiBkYXVnaHRlcuKAkWNhcmQgcGVyaXBoZXJhbHMsIHN1Y2ggYXMgTUlD
LCBkaXNwbGF5LCBjYW1lcmEsIHNlbnNvciwgCmFuZCBORkMgZGF1Z2h0ZXIgY2FyZHMuCgpUaGFu
a3MKS29tYWwKCj4KPj4gRWFjaCBib2FyZCBEVFMgZW5hYmxlcyBVU0IgKHBlcmlwaGVyYWwgbW9k
ZSkgd2l0aCB0aGUgYXBwcm9wcmlhdGUgUE1JQwo+PiByZWd1bGF0b3Igc3VwcGxpZXMgZm9yIHRo
ZSBRVVNCMiBhbmQgUU1QIFBIWXMsIGFuZCBlTU1DIHdpdGggdGhlCj4+IGNvcnJlY3Qgdm1tYy92
cW1tYyBzdXBwbGllcyBmb3IgdGhlIENRTSBTb00ncyBQTUlDLgo+Pgo+PiBDby1kZXZlbG9wZWQt
Ynk6IEltcmFuIFNoYWlrIDxpbXJhbi5zaGFpa0Bvc3MucXVhbGNvbW0uY29tPgo+PiBTaWduZWQt
b2ZmLWJ5OiBJbXJhbiBTaGFpayA8aW1yYW4uc2hhaWtAb3NzLnF1YWxjb21tLmNvbT4KPj4gQ28t
ZGV2ZWxvcGVkLWJ5OiBLcmlzaG5hIEt1cmFwYXRpIDxrcmlzaG5hLmt1cmFwYXRpQG9zcy5xdWFs
Y29tbS5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEtyaXNobmEgS3VyYXBhdGkgPGtyaXNobmEua3Vy
YXBhdGlAb3NzLnF1YWxjb21tLmNvbT4KPj4gQ28tZGV2ZWxvcGVkLWJ5OiBNb25pc2ggQ2h1bmFy
YSA8cXVpY19tY2h1bmFyYUBxdWljaW5jLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogTW9uaXNoIENo
dW5hcmEgPHF1aWNfbWNodW5hcmFAcXVpY2luYy5jb20+Cj4+IENvLWRldmVsb3BlZC1ieTogUmFr
ZXNoIEtvdGEgPHJha2VzaC5rb3RhQG9zcy5xdWFsY29tbS5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6
IFJha2VzaCBLb3RhIDxyYWtlc2gua290YUBvc3MucXVhbGNvbW0uY29tPgo+PiBDby1kZXZlbG9w
ZWQtYnk6IFJhdml0ZWphIExhZ2d5c2hldHR5IDxyYXZpdGVqYS5sYWdneXNoZXR0eUBvc3MucXVh
bGNvbW0uY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBSYXZpdGVqYSBMYWdneXNoZXR0eSA8cmF2aXRl
amEubGFnZ3lzaGV0dHlAb3NzLnF1YWxjb21tLmNvbT4KPj4gQ28tZGV2ZWxvcGVkLWJ5OiBTbmVo
IE1hbmthZCA8c25laC5tYW5rYWRAb3NzLnF1YWxjb21tLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTog
U25laCBNYW5rYWQgPHNuZWgubWFua2FkQG9zcy5xdWFsY29tbS5jb20+Cj4+IENvLWRldmVsb3Bl
ZC1ieTogVmlzaG51IFNhbnRob3NoIDx2aXNobnUuc2FudGhvc2hAb3NzLnF1YWxjb21tLmNvbT4K
Pj4gU2lnbmVkLW9mZi1ieTogVmlzaG51IFNhbnRob3NoIDx2aXNobnUuc2FudGhvc2hAb3NzLnF1
YWxjb21tLmNvbT4KPj4gQ28tZGV2ZWxvcGVkLWJ5OiBYdWV5YW8gQW4gPHh1ZXlhby5hbkBvc3Mu
cXVhbGNvbW0uY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBYdWV5YW8gQW4gPHh1ZXlhby5hbkBvc3Mu
cXVhbGNvbW0uY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBLb21hbCBCYWphaiA8a29tYWwuYmFqYWpA
b3NzLnF1YWxjb21tLmNvbT4KPj4gLS0tCj4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL01h
a2VmaWxlICAgICAgICAgICB8ICAyICsKPj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2hp
a3JhLWNxbS1ldmsuZHRzIHwgNjEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4gICBh
cmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2hpa3JhLWNxcy1ldmsuZHRzIHwgNjEgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysKPj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2hpa3Jh
LWV2ay5kdHNpICAgIHwgMTMgKysrKysrCj4+ICAgNCBmaWxlcyBjaGFuZ2VkLCAxMzcgaW5zZXJ0
aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL01ha2Vm
aWxlIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL01ha2VmaWxlCj4+IGluZGV4IGNjNDI4Mjlm
OTJlYi4uNmRlNzgzYmNkMTMzIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fj
b20vTWFrZWZpbGUKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL01ha2VmaWxlCj4+
IEBAIC0zMjgsNiArMzI4LDggQEAgZHRiLSQoQ09ORklHX0FSQ0hfUUNPTSkJKz0gc2RtODUwLWh1
YXdlaS1tYXRlYm9vay1lLTIwMTkuZHRiCj4+ICAgZHRiLSQoQ09ORklHX0FSQ0hfUUNPTSkJKz0g
c2RtODUwLWxlbm92by15b2dhLWM2MzAuZHRiCj4+ICAgZHRiLSQoQ09ORklHX0FSQ0hfUUNPTSkJ
Kz0gc2RtODUwLXNhbXN1bmctdzczNy5kdGIKPj4gICBkdGItJChDT05GSUdfQVJDSF9RQ09NKQkr
PSBzZHg3NS1pZHAuZHRiCj4+ICtkdGItJChDT05GSUdfQVJDSF9RQ09NKQkrPSBzaGlrcmEtY3Ft
LWV2ay5kdGIKPj4gK2R0Yi0kKENPTkZJR19BUkNIX1FDT00pCSs9IHNoaWtyYS1jcXMtZXZrLmR0
Ygo+PiAgIGR0Yi0kKENPTkZJR19BUkNIX1FDT00pCSs9IHNtNDI1MC1vbmVwbHVzLWJpbGxpZTIu
ZHRiCj4+ICAgZHRiLSQoQ09ORklHX0FSQ0hfUUNPTSkJKz0gc200NDUwLXFyZC5kdGIKPj4gICBk
dGItJChDT05GSUdfQVJDSF9RQ09NKQkrPSBzbTYxMTUtZnh0ZWMtcHJvMXguZHRiCj4+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2hpa3JhLWNxbS1ldmsuZHRzIGIvYXJj
aC9hcm02NC9ib290L2R0cy9xY29tL3NoaWtyYS1jcW0tZXZrLmR0cwo+PiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjEyZWVjYTg0ODMyYwo+PiAtLS0gL2Rldi9u
dWxsCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zaGlrcmEtY3FtLWV2ay5kdHMK
Pj4gQEAgLTAsMCArMSw2MSBAQAo+PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEJTRC0z
LUNsYXVzZQo+PiArLyoKPj4gKyAqIENvcHlyaWdodCAoYykgUXVhbGNvbW0gVGVjaG5vbG9naWVz
LCBJbmMuIGFuZC9vciBpdHMgc3Vic2lkaWFyaWVzLgo+PiArICovCj4+ICsKPj4gKy9kdHMtdjEv
Owo+PiArCj4+ICsjaW5jbHVkZSAic2hpa3JhLWNxbS1zb20uZHRzaSIKPj4gKyNpbmNsdWRlICJz
aGlrcmEtZXZrLmR0c2kiCj4+ICsKPj4gKy8gewo+PiArCW1vZGVsID0gIlF1YWxjb21tIFRlY2hu
b2xvZ2llcywgSW5jLiBTaGlrcmEgQ1FNIEVWSyI7Cj4+ICsJY29tcGF0aWJsZSA9ICJxY29tLHNo
aWtyYS1jcW0tZXZrIiwgInFjb20sc2hpa3JhLWNxbS1zb20iLCAicWNvbSxzaGlrcmEiOwo+PiAr
CWNoYXNzaXMtdHlwZSA9ICJlbWJlZGRlZCI7Cj4+ICsKPj4gKwlhbGlhc2VzIHsKPj4gKwkJbW1j
MCA9ICZzZGhjXzE7Cj4+ICsJCXNlcmlhbDAgPSAmdWFydDA7Cj4+ICsJfTsKPj4gKwo+PiArCWNo
b3NlbiB7Cj4+ICsJCXN0ZG91dC1wYXRoID0gInNlcmlhbDA6MTE1MjAwbjgiOwo+PiArCX07Cj4+
ICt9Owo+PiArCj4+ICsmc2RoY18xIHsKPj4gKwl2bW1jLXN1cHBseSA9IDwmcG00MTI1X2wyMD47
Cj4+ICsJdnFtbWMtc3VwcGx5ID0gPCZwbTQxMjVfbDE0PjsKPj4gKwo+PiArCXBpbmN0cmwtMCA9
IDwmc2RjMV9zdGF0ZV9vbj47Cj4+ICsJcGluY3RybC0xID0gPCZzZGMxX3N0YXRlX29mZj47Cj4+
ICsJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IiwgInNsZWVwIjsKPj4gKwo+PiArCW5vbi1yZW1v
dmFibGU7Cj4+ICsJc3VwcG9ydHMtY3FlOwo+PiArCW5vLXNkaW87Cj4+ICsJbm8tc2Q7Cj4+ICsK
Pj4gKwlzdGF0dXMgPSAib2theSI7Cj4+ICt9Owo+PiArCj4+ICsmdXNiXzEgewo+PiArCWRyX21v
ZGUgPSAicGVyaXBoZXJhbCI7Cj4+ICsKPj4gKwlzdGF0dXMgPSAib2theSI7Cj4+ICt9Owo+PiAr
Cj4+ICsmdXNiXzFfaHNwaHkgewo+PiArCXZkZC1zdXBwbHkgPSA8JnBtNDEyNV9sMTI+Owo+PiAr
CXZkZGEtcGxsLXN1cHBseSA9IDwmcG00MTI1X2wxMz47Cj4+ICsJdmRkYS1waHktZHBkbS1zdXBw
bHkgPSA8JnBtNDEyNV9sMjE+Owo+PiArCj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+PiArfTsKPj4g
Kwo+PiArJnVzYl9xbXBwaHkgewo+PiArCXZkZGEtcGh5LXN1cHBseSA9IDwmcG00MTI1X2w4PjsK
Pj4gKwl2ZGRhLXBsbC1zdXBwbHkgPSA8JnBtNDEyNV9sMTM+Owo+PiArCj4+ICsJc3RhdHVzID0g
Im9rYXkiOwo+PiArfTsKPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9z
aGlrcmEtY3FzLWV2ay5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2hpa3JhLWNxcy1l
dmsuZHRzCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uYmM5
MzI4MmY2NGNmCj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9x
Y29tL3NoaWtyYS1jcXMtZXZrLmR0cwo+PiBAQCAtMCwwICsxLDYxIEBACj4+ICsvLyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogQlNELTMtQ2xhdXNlCj4+ICsvKgo+PiArICogQ29weXJpZ2h0IChj
KSBRdWFsY29tbSBUZWNobm9sb2dpZXMsIEluYy4gYW5kL29yIGl0cyBzdWJzaWRpYXJpZXMuCj4+
ICsgKi8KPj4gKwo+PiArL2R0cy12MS87Cj4+ICsKPj4gKyNpbmNsdWRlICJzaGlrcmEtY3FtLXNv
bS5kdHNpIgo+PiArI2luY2x1ZGUgInNoaWtyYS1ldmsuZHRzaSIKPj4gKwo+PiArLyB7Cj4+ICsJ
bW9kZWwgPSAiUXVhbGNvbW0gVGVjaG5vbG9naWVzLCBJbmMuIFNoaWtyYSBDUVMgRVZLIjsKPj4g
Kwljb21wYXRpYmxlID0gInFjb20sc2hpa3JhLWNxcy1ldmsiLCAicWNvbSxzaGlrcmEtY3FtLXNv
bSIsICJxY29tLHNoaWtyYSI7Cj4+ICsJY2hhc3Npcy10eXBlID0gImVtYmVkZGVkIjsKPj4gKwo+
PiArCWFsaWFzZXMgewo+PiArCQltbWMwID0gJnNkaGNfMTsKPj4gKwkJc2VyaWFsMCA9ICZ1YXJ0
MDsKPj4gKwl9Owo+PiArCj4+ICsJY2hvc2VuIHsKPj4gKwkJc3Rkb3V0LXBhdGggPSAic2VyaWFs
MDoxMTUyMDBuOCI7Cj4+ICsJfTsKPj4gK307Cj4+ICsKPj4gKyZzZGhjXzEgewo+PiArCXZtbWMt
c3VwcGx5ID0gPCZwbTQxMjVfbDIwPjsKPj4gKwl2cW1tYy1zdXBwbHkgPSA8JnBtNDEyNV9sMTQ+
Owo+PiArCj4+ICsJcGluY3RybC0wID0gPCZzZGMxX3N0YXRlX29uPjsKPj4gKwlwaW5jdHJsLTEg
PSA8JnNkYzFfc3RhdGVfb2ZmPjsKPj4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiLCAic2xl
ZXAiOwo+PiArCj4+ICsJbm9uLXJlbW92YWJsZTsKPj4gKwlzdXBwb3J0cy1jcWU7Cj4+ICsJbm8t
c2RpbzsKPj4gKwluby1zZDsKPj4gKwo+PiArCXN0YXR1cyA9ICJva2F5IjsKPj4gK307Cj4+ICsK
Pj4gKyZ1c2JfMSB7Cj4+ICsJZHJfbW9kZSA9ICJwZXJpcGhlcmFsIjsKPj4gKwo+PiArCXN0YXR1
cyA9ICJva2F5IjsKPj4gK307Cj4+ICsKPj4gKyZ1c2JfMV9oc3BoeSB7Cj4+ICsJdmRkLXN1cHBs
eSA9IDwmcG00MTI1X2wxMj47Cj4+ICsJdmRkYS1wbGwtc3VwcGx5ID0gPCZwbTQxMjVfbDEzPjsK
Pj4gKwl2ZGRhLXBoeS1kcGRtLXN1cHBseSA9IDwmcG00MTI1X2wyMT47Cj4+ICsKPj4gKwlzdGF0
dXMgPSAib2theSI7Cj4+ICt9Owo+PiArCj4+ICsmdXNiX3FtcHBoeSB7Cj4+ICsJdmRkYS1waHkt
c3VwcGx5ID0gPCZwbTQxMjVfbDg+Owo+PiArCXZkZGEtcGxsLXN1cHBseSA9IDwmcG00MTI1X2wx
Mz47Cj4+ICsKPj4gKwlzdGF0dXMgPSAib2theSI7Cj4+ICt9Owo+PiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy9xY29tL3NoaWtyYS1ldmsuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcWNvbS9zaGlrcmEtZXZrLmR0c2kKPj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4gaW5kZXgg
MDAwMDAwMDAwMDAwLi5mYWU4Yzc1YjY4YjMKPj4gLS0tIC9kZXYvbnVsbAo+PiArKysgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3Fjb20vc2hpa3JhLWV2ay5kdHNpCj4+IEBAIC0wLDAgKzEsMTMgQEAK
Pj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBCU0QtMy1DbGF1c2UKPj4gKy8qCj4+ICsg
KiBDb3B5cmlnaHQgKGMpIFF1YWxjb21tIFRlY2hub2xvZ2llcywgSW5jLiBhbmQvb3IgaXRzIHN1
YnNpZGlhcmllcy4KPj4gKyAqLwo+PiArCj4+ICsmcXVwdjNfMCB7Cj4+ICsJZmlybXdhcmUtbmFt
ZSA9ICJxY29tL3NoaWtyYS9xdXB2M2Z3LmVsZiI7Cj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+PiAr
fTsKPj4gKwo+PiArJnVhcnQwIHsKPj4gKwlzdGF0dXMgPSAib2theSI7Cj4+ICt9Owo+Pgo+PiAt
LSAKPj4gMi4zNC4xCj4+CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
