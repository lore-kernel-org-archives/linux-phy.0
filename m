Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09334606A330
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 15:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kbrJIpLr;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=bF2zeuvs;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=h1i3kFF2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GKygnTgSPGZ19WPr9BruciH/m1WtC8ayN67vOpNMXb0=; b=kbrJIpLrEQyhWJ54fcB9eWqJvv
	pXbUMXKnwODUe+O8t0cfUB8hYh7UsmXyydnQG5BVg6tBgHaBLmtHRcjwZjHuduAeEEtoST2Cb+VBj
	CuhYkmQMpng7u8H/hu3yTJtvGohXsMnTE8G0lmlMBkq5U/p30rmbe4CkUhk7ek0Rz+Du/Lur4a0YK
	AutdGPNskE9XzkeCq+2ORb+MW6PVEsZ2XrJo+xCJfaSzfIJr7kZKyTOxcEti7XfN8wv+1++9zY137
	LPZz7Y0J/aRIOClGVWPfsqhbo2P1+4VC7mpHrXYWd5Oeimr7rPUU48ehdnfgvBtyAWYaE88JCJ36i
	ggsXX7lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMoXd-0000000C0mH-3GZR;
	Fri, 30 Oct 2026 15:29:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMoXZ-0000000C0le-3Iwj
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 15:29:16 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69UERFaj2495116
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 15:29:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lpfxxF1BXeKYsOQeqaWCrwdbveAmxjDzeY39sdHqnnY=; b=bF2zeuvsw8xTU40d
	HT3A/yDe4WC9oljx4DKP+7HSiqoE9+lGkf+ymTN21QJD480GTyQ1CJtgBZB3qrHU
	ImLYsqEaLETN8Bf3czzoU4YN2cyGFE1+OuswgKdL3Wb17SXpYgb7UYpW14Lz/qxe
	yJK+863j/y17yMbvgKRvcWSZX/dvSVqxQpCk1aoFQGpm8WJqnFL13Xbj19Y4SZFF
	mK5KdJyby1L3t8TcdmxyONIf3mU+G0I984B4n4ksG+ySVoLL05k1v3iTvqXL56fe
	RflZcfEETNCUegj4fE3ge8WiWNvwtmiiKtTOX/I057m+pb0IojphXTVCyAxB3sOL
	USiJPQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hme6p3t6f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 15:29:12 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2eaae62796dso10830225ad.0
        for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 08:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793374152; x=1793978952; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lpfxxF1BXeKYsOQeqaWCrwdbveAmxjDzeY39sdHqnnY=;
        b=h1i3kFF2y39UFs+2wMZkH0Fq5uILy7WymRFl1dbUYAq8lDKFiSxXa4lGfvtUIywzYH
         kkUAmOeLGV5O9nSnVQJWwOvVKg6/f+43K5CcLxTNnzktSxQmjlwW8gOLagm3R6hlM4ni
         Dlu7vuZaeQ/xPRN07W8B6hL9xDHAeUIchvKGVlQZNtcJ7AWMuw5JynY3O5HIXIfCT7Zh
         r45UF04khElxWPVecTqrORuKdZmetQDYT8TjW0shQkDtT9iM4OAvVSdoPbGM2iGPp5a7
         ANQw8yjmRW29XJtan1wGNVvPEoooUtBMvg43dC8PGq5d/Fs/5MaRo/BqkftmirYElJTj
         s92A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793374152; x=1793978952;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=lpfxxF1BXeKYsOQeqaWCrwdbveAmxjDzeY39sdHqnnY=;
        b=GFxSbndbNjaPSbgARdELEGShXV+PTuvOI43peqA1zVwzLwW4qAOfGuaU1IBhznljHc
         9g+wgl21qMRHD6XdIBCw3zCz9SApOdNGBQjhblbVH/vjkAzYYfoEShdoZNhP+mrQt6AU
         tpLhSHw1MFdS5rD5DSmZg/U4tAgIIEDFbGJ+BWE8/dNRF5ArBiM3HldO0vHmI25XULbd
         hXlKcqHiHVt//OK+GON8OtOWUKgiYERHO+R/ipssTlZ2m/gGuVNZzB4GVBtQabynyA5v
         U2knRs5cKfuG8Bk70MUyUkV4LYOld+jWYAPd37g/fqQQUIHVR1nU8PAuYPQ8BmGsePW2
         UAcw==
X-Forwarded-Encrypted: i=1; AKwUvBx1Oiilkvx2f99N0x9ONpyV5iZJTiSXdkl5MDri6m6abW0NZCPxorxFEddKxXIo8ZedKCJRTs/yKuc=@lists.infradead.org
X-Gm-Message-State: AFq9FYJoN+UJVaq+fc5Ny6gGcVGIKq8f0ETriSTCs2JVrqdivjE2O/+2
	JE+PEiZvTe8CjWzrNJJ9zor6EN4RhFnPtMCdgd4uUozanMCOHw/6kBtTcCj+Ijuz6N5scAv0DZ6
	/y3g+73iJCZr2jCj6nFFW67WN+HeCS0OZing6mOkmPv/a3J36okFuuikap47KXUa+BIdd
X-Gm-Gg: AYBFou3BsYtPVPErHhry+mnuiupSSK0vXGNPqOTLzjmo7yETM3EmQWrrVPLroN49wee
	q9xE49dIPhoRPPopgTfjV8jGH0MxrQ/DV41FLmxjE9e2e5SVBttCW+wcoSmfppeZpKtmcU2jX9q
	/tOej5/ByUZ516uUg2xW1fTwjBltyals/C1H/uI/rAXfQIEFD08+eIC7hdC1IcpDHwY2Sogy1fE
	CGl52Zwsj8vbc4AgpOHI9/s3yZICSKKCE58O4DXwEjEdz0HkuAsNymXxIsnFvmrNBkk17s8qx9D
	WmfU0AyijQUzXH/8HowEcTZlWaA2dCTPK6MHHSyGq0m70hQnKbsLsmya4uxISQuEwxxxtcarB+i
	EVz9L4bieJhtNDhMq21i2dutng0MsB5aC1AowcphQurD4rPYaVwFGA7a/YeTciyZxrmRuGAAHgy
	uBvnx4FkYtLAOjh/Gx6xMbwYDF6nDFJu3eclKY
X-Received: by 2002:a17:903:3804:b0:2ea:fb8b:258d with SMTP id d9443c01a7336-2eb36401e95mr30024295ad.6.1793374151723;
        Fri, 30 Oct 2026 08:29:11 -0700 (PDT)
X-Received: by 2002:a17:903:3804:b0:2ea:fb8b:258d with SMTP id d9443c01a7336-2eb36401e95mr30024015ad.6.1793374151265;
        Fri, 30 Oct 2026 08:29:11 -0700 (PDT)
Received: from [192.168.1.6] ([117.143.160.247])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2eb392add5dsm9202195ad.68.2026.10.30.08.29.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2026 08:29:10 -0700 (PDT)
Message-ID: <7d443972-d4fe-4bb0-b758-49608bd27446@oss.qualcomm.com>
Date: Fri, 30 Oct 2026 23:29:01 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] media: qcom: camss: Add support for Hawi
To: Bryan O'Donoghue <bod@kernel.org>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org
References: <20261030-hawi-maili-camss-v3-0-9742bca8cef2@oss.qualcomm.com>
 <fFfGGWaoXA-LdO6s8Xh_kQWQfncXe9YNdpcj2yNkphWHAR_V69LdLOcuhXPsbg8dEUSN4j4yygq4wPre5cz79w==@protonmail.internalid>
 <20261030-hawi-maili-camss-v3-5-9742bca8cef2@oss.qualcomm.com>
 <23845ad3-dedd-4e24-803b-5abf3b030c4a@kernel.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <23845ad3-dedd-4e24-803b-5abf3b030c4a@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDMwMDA2MSBTYWx0ZWRfX/1cwVYQngquI
 uIkZvU7DIP3pKU1X6hvnNSd2YcR5wCes9bk/Y4kESzqaP3cjN1jxeygTV+DJpzr8Vffsauzd1+n
 gGjXBe3w2zXKApV9mS15r6oBC/x7lAFN3wDK3IdBvLc4lLqpzKz6s+T/uBLz2krHpG8z6xXkCwl
 Get94Y+aiNkVshg4Jm4HvJYud5mGSBuwUqb/8eVd1eHHKQ9ttX7dQkWtONDvyu4sX3fEki8BzsJ
 DIEaUdK9To6FuRXKMUgNScd8F7CpgdwfZF+NlsHxj6NzWnXxqwpNY7fFITbhz0pDDBKlBlOFacm
 p4QC42srItX9Pcxz6IGUiinPAnIGgcnJJEcEBO7HE0vDRvyfu7AFVW31/UBBoQZp6KktFGDAN7T
 YXn1AFRKaaoezsrIAnlAg0JYs1IeHBM88dwGQS0z4+Zyl4TRx9pmjW3W/t41dXXLxdegBc9JQBn
 gS/OQ4xJtKziqbR94tQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDMwMDA2MSBTYWx0ZWRfX62S9idHIBGbR
 A4Nb3BPV39x5OOZf/YRa7rlHKaFc8y+7vpJNsONkJ2aWatzfghASezLGk9uQTpeEb7NkNxO2NHP
 9o8wT/8XIIcrQ5tXjZPHEoXNYiIu0S4=
X-Proofpoint-ORIG-GUID: 2oD933G0LElXq5gvAjBG9J-pUsLzcn_v
X-Proofpoint-GUID: 2oD933G0LElXq5gvAjBG9J-pUsLzcn_v
X-Authority-Analysis: v=2.4 cv=TL3Q2Fla c=1 sm=1 tr=0 ts=6ae4b7c8 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=6d0oVIyUxUng7TJeo7N4IA==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=l-QsVsxeav8zdcdG2uYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-30_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1015
 adultscore=0 bulkscore=0 malwarescore=0 phishscore=0 suspectscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610300061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_082913_942599_FF73DE6A 
X-CRM114-Status: GOOD (  12.97  )
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

T24gMTAvMzAvMjAyNiAxMTowNSBQTSwgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPiBPbiAzMC8x
MC8yMDI2IDEyOjQzLCBOaWhhbCBLdW1hciBHdXB0YSB3cm90ZToKPj4gQEAgLTYxMTMsNiArNjM0
MSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIAo+PiBjYW1zc19kdF9tYXRj
aFtdID0gewo+PiDCoMKgwqDCoMKgIHsgLmNvbXBhdGlibGUgPSAicWNvbSxzbTgyNTAtY2Ftc3Mi
LCAuZGF0YSA9ICZzbTgyNTBfcmVzb3VyY2VzIH0sCj4+IMKgwqDCoMKgwqAgeyAuY29tcGF0aWJs
ZSA9ICJxY29tLHNtODU1MC1jYW1zcyIsIC5kYXRhID0gJnNtODU1MF9yZXNvdXJjZXMgfSwKPj4g
wqDCoMKgwqDCoCB7IC5jb21wYXRpYmxlID0gInFjb20sc204NjUwLWNhbXNzIiwgLmRhdGEgPSAm
c204NjUwX3Jlc291cmNlcyB9LAo+PiArwqDCoMKgIHsgLmNvbXBhdGlibGUgPSAicWNvbSxoYXdp
LWNhbXNzIiwgLmRhdGEgPSAmaGF3aV9yZXNvdXJjZXMgfSwKPj4gwqDCoMKgwqDCoCB7IC5jb21w
YXRpYmxlID0gInFjb20seDFlODAxMDAtY2Ftc3MiLCAuZGF0YSA9IAo+PiAmeDFlODAxMDBfcmVz
b3VyY2VzIH0sCj4+IMKgwqDCoMKgwqAgeyAuY29tcGF0aWJsZSA9ICJxY29tLGdseW11ci1jYW1z
cyIsIC5kYXRhID0gJngxZTgwMTAwX3Jlc291cmNlcyB9LAo+IAo+IHRoaXMgaW5zZXJ0aW9uIG1h
a2VzIG5vIHNlbnNlLgo+IAo+IEluIGZhY3QgZ2x5bXVyIHNob3VsZCBoYXZlIGdvbmUgdXAgdGhl
IHRvcCB3aXRoIGhhd2kgdW5kZXJuZWF0aCBpdC4KPiAKPiBDb3VsZCB5b3UgcGxlYXNlIHJlbWVk
aWF0ZSA/Cj4gCj4gLS0tCj4gYm9kCgpBQ0suIFRoYW5rcyBmb3IgcG9pbnRpbmcgdGhpcyBvdXQu
CgpUaGUgY29tcGF0aWJsZSBvcmRlciBzaG91bGQgYmUgY2hlY2tlZCBjYXJlZnVsbHkgZ29pbmcg
Zm9yd2FyZC4gV2Ugd2lsbCAKY29ycmVjdCB0aGUgb3JkZXIgYW5kIG1ha2Ugc3VyZSBHbHltdXIg
aXMgcGxhY2VkIGFib3ZlIEhhd2kuCgotLS0KQmVzdCBSZWdhcmRzLApIYW5neGlhbmcKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
