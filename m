Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E980606A322
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 14:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zPLfeZVj;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=FpczSe1P;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=HuT1aqZU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1wzu6PNzFAddNB1Vzz0fV3SLubcPVxFs0L6qrWyAeB4=; b=zPLfeZVjMGiBYKAIVgcqSEN36G
	gfVv+X9OJA4YOcJU3HkkeTBo2oBq2HCRpobO92wrQkdEN+/MCtLba5mQAzZRRcZAykqXQ+OsoQxGa
	eAZOl++dKkQyZUTDPaAZZFbrmAEdCdBCyvK0oOgUCFFtHMbVGizAd20Fpr1DGjrjsMVo97CosJjle
	Sxm5a2ZakIc168e049fUNSjuITC76yxDcSVmMG7H9SfgB36M+bpT4gm/QDq4qitOvDGiGoSKznykS
	rKEXOMtnHi1xvsxWQTGcysiuFR9GQGVy8UNrjnxY07CDa3pokmixXX0e6p7HOZFlFxKSO1JiyneI2
	puotF9RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM4sO-00000007EcC-0RDK;
	Wed, 28 Oct 2026 14:43:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM4sL-00000007EaA-3LyW
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 14:43:39 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SDIPVi3917216
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 14:43:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G1sQ0KTYK5z76bmjBHXp6Cb4x84OHC71FX/y2W7OjeQ=; b=FpczSe1PtrDQZeMF
	xAcDEWutCYtpKyczMPByF5MOKSZUV3PuS5n+siKPN+V5sXJCpt0P98t5cpnrk+zR
	mOxHXZPp5eHLMelOwCWzai4r9W+jwX7vbl6kHe5//sq996xcgxyZo1Agqdi1gmkX
	hXRuGFqV7KWCAdVazORIDlv0onlm8L49506IDfJHhzulBpRd1ETmFY9942Log2b2
	3fdkj6gCDL74FBpwtj9+yIOgUy4vriUtjZhdZXywkeJffAVEgrcbIRSg8tc2tJ76
	VkzOwDdghTlU3+28wjC8hgyNAu5IEsNv4yROZ3dnHYtLPtXSuOUPljakbOXc/hyZ
	gCuFnA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkhtngc7g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 14:43:35 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-9440b27c1feso121954785a.2
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 07:43:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793198615; cv=none;
        d=google.com; s=arc-20260327;
        b=QMZtc+vjPm2T9bWsksPn7udI9LYe2x+V9S8yWGXEy8tAWp5TB8MsTsh/Q3TOHp1rIh
         FDzf7q1nKYfgcqekIcUOo6UI9S0YFjNik7qv4is0c7Jbe9K4ovUKtvKGZLrh4X63cMHk
         OWcBoLp7q3xNJ+xyxX7V2wK7LqyoyZ4UApNR1jK0sFDwaP6TlLkue4wIM01ckzzCXFpp
         sp4Mre6eo1RpXz96ic1kBjIcVD5ukbk9VCVDFqhn9s+7cPFk7eekmD22vu+w+OqxvEOh
         sY2OohzHJMZK8pUiKxJF8amfKUaoSVXM51A+jMEYa2rSkHOWzZNW5mHRKrFLkllz1Do5
         99gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=G1sQ0KTYK5z76bmjBHXp6Cb4x84OHC71FX/y2W7OjeQ=;
        fh=FEpZEjxej9TQrtnNXsLXSVoxV+KahMbL7B19Xjlb40w=;
        b=NmYzdd7zRpdZLH+zUIHZckf61vSCnzNOek4XQT5a2lPXuo4vPYlT2A/OgV3vb49+iZ
         pMBVaW/df0ScbCtNBa4DerlzweOv3okZ3A/EMAJ7clFMuCW4RkCXXagW75rV67K50XYx
         WKTsus8pXE9CP1qGvf+uYZtNQZxIOi24rq29/aLdBINvel14sKTDdqehb7DR6ACiUwOG
         1xe8QVxBfEVXmGw2tdC5YbVrD+CTU2QsdKoHK90FiGOxJxALPp5kPkQ8VFa4RHl3N4tw
         Ol2lBI5naaE8uHwGM8X/BbpN49Laqo0dWhaUoMeIwAAf9RUrPEsuXqQ0FQ5S7rOAivqM
         d2kw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793198615; x=1793803415; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=G1sQ0KTYK5z76bmjBHXp6Cb4x84OHC71FX/y2W7OjeQ=;
        b=HuT1aqZUWqjCkzkqBMfHi3ZouufwaSl/GTtvyY7fhLqo3fRjLZJQzecVHmq0JWfCVL
         eHCBPiMMEd4EP3XChkLKij05OoC1xt3CkDtSB9YDistVitIujCpiCN+pNQ1sXi6zwgmF
         XazaaSms+z7zoPB4uLkgdUUMITpBi92isQDNhpINKImJQIfo1f7uXWI9kd0eHSBfvEuU
         K9It9U8gzDgxe4UQoJzyiWz2buOLwl0zKY6EwF1JjevKk5cLB4hkOMZ+CUzBxFpFvKaw
         W2F4jUqvffPO2rldk4kqAHvh9aQZNOBR7YBXcTkeVcEjEl4eh7wQh716QU74RZRXYOAm
         trgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793198615; x=1793803415;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=G1sQ0KTYK5z76bmjBHXp6Cb4x84OHC71FX/y2W7OjeQ=;
        b=bcrh0i2oV70FwsPXvD7UYKLquXWBVsJTAoVrJC66l8eeHDPQlc1M7/IQdAtUmTorOC
         dXrwIMk0oeHw+23jG150hqbeQjKI0zjZYCcWBtw5dG1b5v+WuOPyTCHk1XFEaYSzwdK2
         3Hg4Zino3rw0Bp/R6xatt5RX5hMxZ+lnGcXjQR3eVrehIfTB3oiUzbjwXdlbXe5H3cpi
         Cg5Ns3qiUD8hAVCDCAEd0VQ5I1PCqyTZDaZoin6FZGATp/LpccOdpfTn8b+T7eVh3j/Q
         17TKrPrpIDA0BT7QqD0kI7oOeP9ylgy8nrv9OWwYZTr8+IBrhrou14uLvIK48yY0gOSl
         4sEA==
X-Forwarded-Encrypted: i=1; AKwUvBwQtiylUysg+mQf6NNqJlt0VLNqD5OAq43tAy+0LvOtuGkGOFct3ojKJll/EfhDSa+pCQtjyQcOqTs=@lists.infradead.org
X-Gm-Message-State: AFq9FYLsN2Eh+sRCq41x5Avwk+JRUeA/zESkyt+CE1vStHfGAHyOMMiA
	iEsvLbX6gO1B/e3VisVVnG6TB5yKqnYCUn4ESqOAcEfI5Kn6yZ418CiEcEVZxcBn8Vtp9sXYzlX
	YM/ABmEG+PqcWiZ2o2/8VwB4HXhyX+HhN3QB1VXCB5a4diFkbO3TVyO9UkIwbASV/v9vGUJnIbf
	t/9LdJDJwVsJyjk29OdRsqWY5H5n/rz4Efw/vDuD0zJ5E=
X-Gm-Gg: AYBFou3LCC2x5/5ussJi1meesOEihlMd5uO3YyDN1o91k1U89TSrNHrRRipdR7kqpT/
	hJ76VnPH9QE2kcq1RVVWlwo+oPrAsRFqI0hAAmTMqx2Yp+yxyc+z1AMn8yD6sxZyX0wBeQb/wsV
	hMPc4S5XHBNuoj1GDyMfWeFr8aha3am10LIITVlBvd64/LTkm67BExBbByWpLZ00+USq1yhEaRC
	Wkk33BSZjXW4g2r6ZUQBbHVfHxkR9quLCSQWpOJ6HBmJyuc1rJOWjlUbnPEyW7OkRd70R3qYZ4=
X-Received: by 2002:a05:620a:4689:b0:93e:96e0:25a5 with SMTP id af79cd13be357-94408c992a0mr358637785a.41.1793198614680;
        Wed, 28 Oct 2026 07:43:34 -0700 (PDT)
X-Received: by 2002:a05:620a:4689:b0:93e:96e0:25a5 with SMTP id
 af79cd13be357-94408c992a0mr358630485a.41.1793198614157; Wed, 28 Oct 2026
 07:43:34 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261026224957.1115370-1-vz@kernel.org> <20261026224957.1115370-4-vz@kernel.org>
In-Reply-To: <20261026224957.1115370-4-vz@kernel.org>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 15:43:22 +0100
X-Gm-Features: AclHuK_taK_aMlFswRYK0_FTG2aOOebWlCbuvM81f6qI_UtBtqUvnrbidwtdTZI
Message-ID: <CAFEp6-3kDzxU3=37b0KEwGoN-e0or2KzS2RO=h-a3S4ZOdDSgg@mail.gmail.com>
Subject: Re: [PATCH v2 3/7] media: qcom: camss: Allow CSI2 PHY devices without
 CSIPHY resources
To: Vladimir Zapolskiy <vz@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, "Bryan O'Donoghue" <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        linux-media@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
X-Proofpoint-GUID: CQY6W5TV3H-Xz0bwsNz-p1fIHgsQYSg0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA1OCBTYWx0ZWRfXyZoe1hw7v84t
 PJ5bgSRMqvPsmb1T7lzY3MZZJZjkrUp5q1H90g0uTM9D0MiyZfqeSnPYiccXWzrsDuJh/1LQ7JX
 7j4o4Gf6EjKftmVs1IA9sYFVbGk8wWy1e+EO7kFVCDzkdVQxhSkIjWDkQ+Z3zNyxQw4ikbvWpRy
 UB5C95KApCSg03RMI3lq+MPi0Kv9QWXD+INkDTaaCyHXISjqT/MJkG6HmcteQn1YkUuWpYV4uV+
 RWxnHdxJLZvOeUmkvVCcGgZfBtnOOpJEZbOYGIORRR89bBKirY/Au0cHZAN/IJHfoNv7/F4Z+de
 KhkPa0phPIJmrLEOsy/0fgJlM4VFYa7gx2oMuDsiQFaGICtYsNoJpvjA6Dp5V/oDXqTengiqvfg
 THhSY2klUdaoYPMETJBKAr6QvoxqzVZMBLAw9VZ84ZWnsPUmaginLFYMLBySsoA2DnPOoius/VT
 83ARMX1fWzO7pBJdwpA==
X-Authority-Analysis: v=2.4 cv=c/A+0h9l c=1 sm=1 tr=0 ts=6ae20a17 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=DJpcGTmdVt4CTyJn9g5Z:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=h-S-3Q9jTzTep4s1cPEA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: CQY6W5TV3H-Xz0bwsNz-p1fIHgsQYSg0
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA1OCBTYWx0ZWRfX5DD0Th00tJ3E
 ODbW+LG3MdumoxMvAmr5BkyLYykUMjOaJugisSfhq9yF5Lj6E3kCOyIzi9EHUsLpujX1Q4PQGX5
 9lNnZOJDGs4RPBifCP8VSFFC01rD2co=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 phishscore=0 adultscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_074337_854519_8B368295 
X-CRM114-Status: GOOD (  23.15  )
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gTW9uLCBPY3QgMjYsIDIwMjYgYXQgMTE6NTDigK9QTSBWbGFkaW1pciBaYXBvbHNraXkgPHZ6
QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gSWYgQ0FNU1MgQ1NJUEhZcyBhcmUgc3VwcG9ydGVkIGJ5
IHRoZSBzdGFuZC1hbG9uZSBDU0kyIFBIWSBkcml2ZXIgb25seSwKPiB0aGVyZSBpcyBubyBuZWVk
IHRvIHByb3ZpZGUgZGVzY3JpcHRpb24gb2YgbGVnYWN5IENTSVBIWSByZXNvdXJjZXMgaW4KPiB0
aGUgQ0FNU1MgZHJpdmVyLCB0aGVyZWZvcmUgaWYgQ1NJUEhZIHJlc291cmNlcyBhcmUgbm90IGdp
dmVuIGZvciBzb21lCj4gc3VwcG9ydGVkIHBsYXRmb3JtLCB1c2UgQ0FNU1MgQ1NJUEhZIHBvcnQg
bnVtYmVycyBhcyBDU0lQSFkgaWRlbnRpZmllcnMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBWbGFkaW1p
ciBaYXBvbHNraXkgPHZ6QGtlcm5lbC5vcmc+CgpSZXZpZXdlZC1ieTogTG9pYyBQb3VsYWluIDxs
b2ljLnBvdWxhaW5Ab3NzLnF1YWxjb21tLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lwaHkuYyB8IDE2ICsrKysrKysrKysrKystLS0KPiAg
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmMgICAgICAgIHwgIDggKysr
KysrLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygt
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1z
cy1jc2lwaHkuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lw
aHkuYwo+IGluZGV4IGY5OWVlYTJlZjIyOC4uOGVjZDUxNDQ1MWQyIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lwaHkuYwo+ICsrKyBiL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lwaHkuYwo+IEBAIC03OTks
NiArNzk5LDExIEBAIGludCBtc21fY3NpcGh5X3N1YmRldl9pbml0X2xlZ2FjeShzdHJ1Y3QgY2Ft
c3MgKmNhbXNzLAo+ICAgICAgICAgcmV0dXJuIHJldDsKPiAgfQo+Cj4gKy8qIEZhbGxiYWNrIHRv
IGdlbmVyaWMgU0RNODQ1IGNvbXBhdGlibGUgZm9ybWF0cyBmb3Igbm9uLWxlZ2FjeSBDU0lQSFlz
ICovCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgY3NpcGh5X3N1YmRldl9yZXNvdXJjZXMgY3NpcGh5
X3Jlc19waHkgPSB7Cj4gKyAgICAgICAuZm9ybWF0cyA9ICZjc2lwaHlfZm9ybWF0c19zZG04NDUs
Cj4gK307Cj4gKwo+ICAvKgo+ICAgKiBtc21fY3NpcGh5X3N1YmRldl9pbml0IC0gSW5pdGlhbGl6
ZSBDU0lQSFkgZGV2aWNlIHN0cnVjdHVyZSBhbmQgcmVzb3VyY2VzCj4gICAqIEBjYW1zczogQ0FN
U1Mgc3RydWN0dXJlCj4gQEAgLTgwOCw3ICs4MTMsNyBAQCBpbnQgbXNtX2NzaXBoeV9zdWJkZXZf
aW5pdF9sZWdhY3koc3RydWN0IGNhbXNzICpjYW1zcywKPiAgICovCj4gIGludCBtc21fY3NpcGh5
X3N1YmRldl9pbml0KHN0cnVjdCBjYW1zcyAqY2Ftc3MsIHU4IHBvcnQpCj4gIHsKPiAtICAgICAg
IGNvbnN0IHN0cnVjdCBjYW1zc19zdWJkZXZfcmVzb3VyY2VzICpyZXMgPSAmY2Ftc3MtPnJlcy0+
Y3NpcGh5X3Jlc1twb3J0XTsKPiArICAgICAgIGNvbnN0IHN0cnVjdCBjYW1zc19zdWJkZXZfcmVz
b3VyY2VzICpyZXMgPSBjYW1zcy0+cmVzLT5jc2lwaHlfcmVzOwo+ICAgICAgICAgc3RydWN0IGNz
aXBoeV9kZXZpY2UgKmNzaXBoeSA9ICZjYW1zcy0+Y3NpcGh5W3BvcnRdOwo+ICAgICAgICAgc3Ry
dWN0IGRldmljZSAqZGV2ID0gY2Ftc3MtPmRldjsKPiAgICAgICAgIHN0cnVjdCBkZXZpY2Vfbm9k
ZSAqZXAsICpyZW1vdGU7Cj4gQEAgLTgzNiw4ICs4NDEsMTMgQEAgaW50IG1zbV9jc2lwaHlfc3Vi
ZGV2X2luaXQoc3RydWN0IGNhbXNzICpjYW1zcywgdTggcG9ydCkKPiAgICAgICAgIH0KPgo+ICAg
ICAgICAgY3NpcGh5LT5jYW1zcyA9IGNhbXNzOwo+IC0gICAgICAgY3NpcGh5LT5pZCA9IHJlcy0+
Y3NpcGh5LmlkOwo+IC0gICAgICAgY3NpcGh5LT5yZXMgPSAmcmVzLT5jc2lwaHk7Cj4gKyAgICAg
ICBpZiAocmVzKSB7Cj4gKyAgICAgICAgICAgICAgIGNzaXBoeS0+aWQgPSByZXNbcG9ydF0uY3Np
cGh5LmlkOwo+ICsgICAgICAgICAgICAgICBjc2lwaHktPnJlcyA9ICZyZXNbcG9ydF0uY3NpcGh5
Owo+ICsgICAgICAgfSBlbHNlIHsKPiArICAgICAgICAgICAgICAgY3NpcGh5LT5pZCA9IHBvcnQ7
Cj4gKyAgICAgICAgICAgICAgIGNzaXBoeS0+cmVzID0gJmNzaXBoeV9yZXNfcGh5Owo+ICsgICAg
ICAgfQo+Cj4gICAgICAgICBzbnByaW50Zihjc2lwaHktPm5hbWUsIEFSUkFZX1NJWkUoY3NpcGh5
LT5uYW1lKSwgImNzaSVkIiwgY3NpcGh5LT5pZCk7Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3Fjb20vY2Ftc3MvY2Ftc3MuYwo+IGluZGV4IGM1NDE4NWM5M2E4YS4uYjBkNjBlNzBlNGJiIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jCj4g
KysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmMKPiBAQCAtNDc5
Niw3ICs0Nzk2LDEwIEBAIHN0YXRpYyB2b2lkIGNhbXNzX2RldGVjdF9sZWdhY3lfcGh5KHN0cnVj
dCBjYW1zcyAqY2Ftc3MpCj4gICAgICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKnJlbW90ZTsKPiAg
ICAgICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqZXA7Cj4KPiAtICAgICAgIGNhbXNzLT5sZWdhY3lf
cGh5ID0gdHJ1ZTsKPiArICAgICAgIC8qIExlZ2FjeSBDU0lQSFkgZGVzY3JpcHRpb24gaW1wbGll
cyB0aGUgcHJvdmlkZWQgQ1NJUEhZIHJlc291cmNlcyAqLwo+ICsgICAgICAgY2Ftc3MtPmxlZ2Fj
eV9waHkgPSAhIWNhbXNzLT5yZXMtPmNzaXBoeV9yZXM7Cj4gKyAgICAgICBpZiAoIWNhbXNzLT5s
ZWdhY3lfcGh5KQo+ICsgICAgICAgICAgICAgICBnb3RvIGRvbmU7Cj4KPiAgICAgICAgIC8qIEZp
bmQgZmlyc3QgcmVtb3RlLWVuZHBvaW50IGFuZCBkZXRlcm1pbmUgaWYgaXRzIGEgUEhZICovCj4g
ICAgICAgICBmb3JfZWFjaF9lbmRwb2ludF9vZl9ub2RlKGNhbXNzLT5kZXYtPm9mX25vZGUsIGVw
KSB7Cj4gQEAgLTQ4MTAsNiArNDgxMyw3IEBAIHN0YXRpYyB2b2lkIGNhbXNzX2RldGVjdF9sZWdh
Y3lfcGh5KHN0cnVjdCBjYW1zcyAqY2Ftc3MpCj4gICAgICAgICAgICAgICAgIGJyZWFrOwo+ICAg
ICAgICAgfQo+Cj4gK2RvbmU6Cj4gICAgICAgICBkZXZfZGJnKGNhbXNzLT5kZXYsICJsZWdhY3kg
cGh5IG1vZGUgJXNcbiIsCj4gICAgICAgICAgICAgICAgIGNhbXNzLT5sZWdhY3lfcGh5ID8gInRy
dWUiIDogImZhbHNlIik7Cj4gIH0KPiBAQCAtNDg0MSw3ICs0ODQ1LDcgQEAgc3RhdGljIGludCBj
YW1zc19pbml0X3N1YmRldmljZXMoc3RydWN0IGNhbXNzICpjYW1zcykKPgo+ICAgICAgICAgICAg
ICAgICBpZiAocmV0IDwgMCkgewo+ICAgICAgICAgICAgICAgICAgICAgICAgIGRldl9lcnIoY2Ft
c3MtPmRldiwgImNzaXBoeSAlZCBpbml0IGZhaWxcbiIsCj4gLSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICByZXMtPmNzaXBoeV9yZXNbaV0uY3NpcGh5LmlkKTsKPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHJlcy0+Y3NpcGh5X3JlcyA/IHJlcy0+Y3NpcGh5X3Jlc1tpXS5j
c2lwaHkuaWQgOiBpKTsKPiAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ICAg
ICAgICAgICAgICAgICB9Cj4gICAgICAgICB9Cj4gLS0KPiAyLjUxLjAKPgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
