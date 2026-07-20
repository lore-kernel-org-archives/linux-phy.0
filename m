Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58B2BC44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 14:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4t4qUxbtNXinvnsL74obQR/q1xbIo5PBXjSCGhG9ySw=; b=qMA3JX2hcYkzwH
	W6BVFon24/ew23IwjZ60fAUEv4csf1Oi9cSqfjI44FoVnz3Gcs86nKrGsYsDYwga5u4RbPWfvmp/6
	hiWkzI+ge9fnn2jhHLcACZvm8QSlsDRjHS40UI8eHn8VZWW2AuHfqux/fLu4h0FGxN7fT7EsQTdli
	nwoKrJ393gUOw54o5IDoc+GmQtTFIXAmEXfN2QlK2hNx+QD54l35SfRPJq5YZv1H8YD4iZHSlBy5v
	UeO6ruWIndcPBdp4KA7V1H5AzPVteNpqUdRfnM07f9ZG3/KiTgh6HBVzh5opqSyWT2n8W2yQnn4z8
	UtiIyJiMeUKiUorDenlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlpNB-000000072Wf-3o7H;
	Mon, 20 Jul 2026 14:53:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlpN9-000000072VQ-1VKV
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 14:53:36 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66KDqXB62962857
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:53:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=MNYrb5YMKHtjz0ioAP78L9
	ceaWl5iEO51K5HmQmXrRc=; b=C5kbTKMuPDZzeGtnkKjGJAd+X3mTx4Wb74feLf
	kWs1fraIc4jtIxa7ZrsnWM7a8Bs58nNTRC8qZQ28grhOd7BsNxlEKSJBQAm2/U3O
	MwtVSU/iWp8obrC1McLRWRduNoCCy6xuPxPm2FxDRLNpv0ZZWD0j2SYPOBd07pyz
	k+4cR9HvPfRVI+Btxgp3nON6DUDitkhPIFHEaeoshghT+fBI+ilgmyNyWURNfZxi
	v9adgoPTGJ7npiqYotqUTcUokiv7E+Sr/YZ3h4/ucXxmAYUDPrtPrVSTb/9rVX1O
	qf8p8LcTwY6ykiJQi89X7pUA0UzOZnTU2ByHes1dr/baFa6g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhfdchwbt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:53:34 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c1a97644aso274719551cf.2
        for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 07:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784559214; x=1785164014; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=MNYrb5YMKHtjz0ioAP78L9ceaWl5iEO51K5HmQmXrRc=;
        b=jc0TyC6oKbX17rWpo/pXrmYsNxfm1huyv9iH1MEPV2dLTaKDgGHVUP8e5fqhevApaz
         ya1NU6+bGpqg6nXFZR5ksReCIyvWeg42OjaKKC9foEQ48QzvoCc+fDFLMXsTuUV1Lx9X
         1EXzjF3NxYyLMiHJjfhA9UsD6EuKivgTGKNDo/Si9fyBXpFkRF4hcC6X0jCsOthjWHKB
         4WQ4lTmoqZZJbTtJkeWG/c49DhCTkL57+rAZ3HCl/vKk44Cj+D+cLjd6YGQUDr6EBexq
         NXS8rRDJzAlAsOdKtyo+FMXgTLL3dU3DbHti6U9oDtdCN8dZgWTYGhzs7AyzVO0i6/KV
         dTrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784559214; x=1785164014;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=MNYrb5YMKHtjz0ioAP78L9ceaWl5iEO51K5HmQmXrRc=;
        b=dqEI966DvfTfDq0jdRBsHBtw07QKN4SM/TpmaG+PnsiUP0pEkK3UbgdD9/VTaM7n3X
         WGPhqxLoY0QLdNJnJ1WG1GhUIU2wlCdfjgB3svSyQ6QUR4DjQcvOWgPa8737AUAPI4dq
         fkXkNiMmOqLrBx2EUMUIhlxZpVmEJfbXE0M8Iz0xJaC2Akula61hNeW6zbk/O53Cmhz0
         qJzV6sxIKoFqzCX3jaBBZZhe95J3A20ksMOUNJJ9/zcxhBX2lgOheqgssAIkTuW0x9mc
         ZxdSYRcw7iresVAui5cTLvHBxjA2bMg+ofcrNDk2zhPCoo8uYUFkDEII52IXxx0GUq4k
         /5mA==
X-Forwarded-Encrypted: i=1; AHgh+RquRUZQwEMusftm+SdAxVd2ielyEpfGmf2nE2TLLePj5XlRcFBxLicmr1LNrCs5RUO0FRASCIIEchc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyp4gUlULAzYJBHB3us3uvl//EQGBYXrn+Z4mUzrYfIS7avtKDL
	yp68D92vBUhuC2oCp5r7u5QU3fgctLdv0ZUY9oJfoTMnTC8Yqi8dJpbTOKwZ1dwWJM3ggaVWvqn
	Qe+5UybB3XqC2Scnmz0d64XjPLz6yD+Jv8oULPpPw4JQyCaCX0IjM8V5K2FirMWFQoDB/
X-Gm-Gg: AfdE7cm8kxtg76z8uqXS5ZrN4nZ3kYR7c0hv9gwYD2ZGHN+owIlpSBXLnedgDZDnmq+
	iWBfvEByggwpe4rUYgesTr9eqEKZNmmXr1IfgtTbsmkBl7+ZvXHlttLVzDRBuWzLKOtyrsUOVCz
	fgXu6cCh7DgQi7F0Hn3mGifBeKkCMFUBaDmd+S9yJ0AjP8JJD1s5set1BVwHHtxw4hnwhj/OJn6
	0bPs0486y1BGgV65slz6mnBRrOuiijU+ebDxWfTUX4GhkGBzuDrzAtvCOwJj/d0mbEDNQCHn4mB
	70eeUhMb6/N37KlFvShVPMOvMhirezt8eBaJTj3Kx0M31ips3PE1Ikpl3b3kWAk3Ib2WH8sjWc3
	DRo7WuKEX5FkNl0fGBzRo6fxJ3HyBJJITjDKK8C7OmV5XBbxsVJciwjt9nKIojG3pMyiKt8XdIX
	RzWbxMQqMPZkjKdVsArfE02VW1Te/FsawZIUDQ5vdVEwZsbG5o4DQ=
X-Received: by 2002:a05:622a:4c05:b0:51c:2135:b00a with SMTP id d75a77b69052e-5213e28e287mr133065151cf.40.1784559213627;
        Mon, 20 Jul 2026 07:53:33 -0700 (PDT)
X-Received: by 2002:a05:622a:4c05:b0:51c:2135:b00a with SMTP id d75a77b69052e-5213e28e287mr133064811cf.40.1784559213170;
        Mon, 20 Jul 2026 07:53:33 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com ([2a01:e0a:830:450:751c:d61c:c91:60dd])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69e7000c3e2sm4800215a12.30.2026.07.20.07.53.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 07:53:32 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v4 0/4] phy: qcom: Fix possible NULL-deref and runtime PM
 race conditions
Date: Mon, 20 Jul 2026 16:53:29 +0200
Message-Id: <20260720-qcom-usb-phy-fix-null-v4-0-4d2a0f06d53a@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGk2XmoC/0WNQQ7CIBREr9L8tZ8A0qJdeQ/jAluwJBRaEKNpe
 nd/3LiZ5GXyZjYoNntboG82yPbli0+RQB0aGCYTHxb9SAySy45ryXEd0oy13HGZPuj8G2MNAZ3
 jZ+3abhRWAblLttT9dq83YpfJek7Zmv+a5K2gVJxpdTpqgQJD8gNbUg3Gx0sqha3VBDqcGQXs+
 xdS5xMSrwAAAA==
X-Change-ID: 20260720-qcom-usb-phy-fix-null-ff097f56d1e4
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: C7FZjHDMSZDFxgT-KRsf6IGMW2vmd9kz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDE2NSBTYWx0ZWRfXw348n0VDcuJx
 YBvL02Nd8fcgS20u8wRUSfQejV0GaA/68x9nkTocWwkHy8NwLTIX1Nwskw6s17Y4wmFSMPjgdEU
 QHLHcgyn55U1Epa9p2zLuL1qT4JqCyTnzzt5FIOGhsBx3n0qXrj1+JcCYg43JtcKzAmo8z7HAm+
 qICst2hlnpYE/v670J0E0UGQWFIJmabqJwCRMQjTYt3cfrS6Yrx5J41RSH3RHqQiSBCcxUgxOWD
 fA3N3YDEkFY7HPxxj1r4yrhbOtm8Z98GtsT6jAUoNmCK/d52uOP9OaO2bncl8IPy/Iir1Z2IMq6
 9BSHj3GwYcMuhm+K3z35JKJqULvShmY78tTVenN6t0u53ThM7DeDRqpBu0ZsQ2mbiAiQGYQ6a9O
 JaljuA4KGJjnegXcwjY8IHA/nKTSic4W+fEMYam83UHzB6BwkABuWeoGglmhLUChsZIBjWu06bZ
 o3d7X6U2qdMtVHe7eIw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDE2NSBTYWx0ZWRfX39FiauzX8DNB
 96Wmgit8wcNUB+y5nKUdpyL9cIuSuE6GbZoLces7qsUDL7MH9Dx8ZDw/HepywoeqyTDl1foQMmp
 H6yLr3AVBTLnne+xZMnNEdq+gsM9jZk=
X-Proofpoint-GUID: C7FZjHDMSZDFxgT-KRsf6IGMW2vmd9kz
X-Authority-Analysis: v=2.4 cv=bv58wkai c=1 sm=1 tr=0 ts=6a5e366e cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=JfrnYn6hAAAA:8
 a=9gNpWytEGD6O0ATn_e0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_03,2026-07-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 priorityscore=1501 spamscore=0 malwarescore=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607200165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_075335_405868_762EBD4C 
X-CRM114-Status: GOOD (  15.89  )
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

QWRkcmVzcyBwb3RlbnRpYWwgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlcyBhbmQgcmFjZSBjb25k
aXRpb25zIHJlbGF0ZWQKdG8gcnVudGltZSBQTSBpbiBzZXZlcmFsIFF1YWxjb21tIFBIWSBkcml2
ZXJzLiBJbiBhbGwgY2FzZXMsIGVuYWJsaW5nCnJ1bnRpbWUgUE0gYmVmb3JlIHRoZSBQSFkgaW5z
dGFuY2UgaXMgZnVsbHkgaW5pdGlhbGl6ZWQgY2FuIGxlYWQgdG8KY3Jhc2hlcyBkdXJpbmcgZWFy
bHkgcnVudGltZSBzdXNwZW5kIGNhbGxiYWNrcy4KCi0gQXR0YWNoIGRyaXZlciBkYXRhIGJlZm9y
ZSBlbmFibGluZyBydW50aW1lIFBNLgotIEludHJvZHVjZSBpbml0aWFsaXphdGlvbiBmbGFncyB3
aGVyZSBuZWVkZWQgdG8gYXZvaWQgZGVyZWZlcmVuY2luZwp1bmluaXRpYWxpemVkIHBvaW50ZXJz
LgotIFJlb3JkZXIgcG1fcnVudGltZV9lbmFibGUoKSBhbmQgcG1fcnVudGltZV9mb3JiaWQoKSBj
YWxscyB0byBwcmV2ZW50CnVubmVjZXNzYXJ5IHN1c3BlbmQvcmVzdW1lIGN5Y2xlcyBkdXJpbmcg
ZHJpdmVyIHByb2JlLgotIFVzZSBkZXZyZXMtbWFuYWdlZCBQTSBydW50aW1lIGhlbHBlcnMgZm9y
IHByb3BlciBjbGVhbnVwLgoKV2h5IGl0IGhhcHBlbnM/CgpUaGUgUEhZIGlzIGEgc3VwcGxpZXIg
b2YgdGhlIFVTQiBkZXZpY2UuIEEgVVNCIGRldmljZSBjYW5ub3QgYmUgcHJvYmVkCnVudGlsIGFs
bCBpdHMgc3VwcGxpZXJzIGFyZSByZWFkeS4gQXMgbG9uZyBhcyB0aGUgUEhZIGlzIG5vdCByZWFk
eSwgdGhlCmRldmljZSBjb3JlIGtlZXBzIHJldHJ5aW5nIHRoZSBwcm9iZSwgd2hpY2ggZmFpbHMg
d2l0aCAtRVBST0JFX0RFRkVSLgoKQXQgc29tZSBwb2ludCB0aGUgUEhZIHByb2JlIGZpbmFsbHkg
cnVucywgYnV0IHRoZSBkZXZpY2UgY29yZSBtYXkgc3RpbGwgYmUKYXR0ZW1wdGluZyB0byBwcm9i
ZSB0aGUgVVNCIGRldmljZSBjb25jdXJyZW50bHkuCiAKSW5zaWRlIF9fZHJpdmVyX3Byb2JlX2Rl
dmljZSgpLCB3ZSBoYXZlOgoKICAgIHJldCA9IHJlYWxseV9wcm9iZShkZXYsIGRydik7CiAgICBw
bV9yZXF1ZXN0X2lkbGUoZGV2KTsKCiAgICBpZiAoZGV2LT5wYXJlbnQpCiAgICAgICAgcG1fcnVu
dGltZV9wdXQoZGV2LT5wYXJlbnQpOwoKICAgIHBtX3J1bnRpbWVfcHV0X3N1cHBsaWVycyhkZXYp
OwogICAgcmV0dXJuIHJldDsKClRoaXMgbWVhbnMgdGhhdCB3aGVuZXZlciBhIFVTQiBwcm9iZSBh
dHRlbXB0IGNvbXBsZXRlcywgd2hldGhlciB3aXRoIGFuCmVycm9yIG9yIG5vdCwgaXRzIHN1cHBs
aWVycyBhcmUgcmVsZWFzZWQgdmlhIHBtX3J1bnRpbWVfcHV0X3N1cHBsaWVycygpLgpSZWxlYXNp
bmcgc3VwcGxpZXJzIG1heSBpbiB0dXJuIHRyaWdnZXIgYSBydW50aW1lIHN1c3BlbmQuCiAKSW4g
b3VyIGNhc2UsIHNpbmNlIHRoZSBQSFkgaXMgYSBzdXBwbGllciBvZiB0aGUgVVNCIGRldmljZSwg
dGhlIFVTQiBjb3JlCmtlZXBzICdsb29waW5nJyBpbiBfX2RyaXZlcl9wcm9iZV9kZXZpY2UoKSBy
ZXR1cm5pbmcgLUVQUk9CRV9ERUZFUiB1bnRpbAp0aGUgUEhZIGJlY29tZXMgcmVhZHkuIEFzIGEg
cmVzdWx0LCBwbV9ydW50aW1lX3B1dF9zdXBwbGllcnMoKSBtYXkgcnVuCmNvbmN1cnJlbnRseSB3
aXRoIHRoZSBQSFkncyBwcm9iZSBmdW5jdGlvbi4gSWYgdGhpcyBoYXBwZW5zIGFmdGVyCnJ1bnRp
bWUgUE0gaGFzIGJlZW4gZW5hYmxlZCBmb3IgdGhlIFBIWSwgYnV0IGJlZm9yZSB0aGUgZHJpdmVy
IGhhcwpmb3JiaWRkZW4gc3VzcGVuZCBvciB0YWtlbiBhIFBNIHJlZmVyZW5jZSwgdGhlIFBIWSBt
YXkgZW5kIHVwIGJlaW5nCnJ1bnRpbWUtc3VzcGVuZGVkICd1bmV4cGVjdGVkbHknCgotLS0KQ2hh
bmdlcyBpbiBWNDoKLSBJbnN0ZWFkIG9mIG1vdmluZyBwbS9mb3JiaWQsIGluY3JlbWVudCB0aGUg
cG0gdXNhZ2UgY291bnRlciBiZWZvcmUKICBlbmFibGluZyBydW50aW1lIHBtIGFuZCBkZWNyZW1l
bnQgaXQgYWZ0ZXIgdGhlIFBIWSBoYXMgYmVlbiBjcmVhdGVkLiAoSm9oYW4pCi0gRHJvcCBub3cg
dW5uZWNlc3NhcnkgZGV2X3NldF9kcnZkYXRhKCkgbW92ZSBpbiBzbnBzLWZlbXRvLXYyCi0gRHJv
cCA0LzUgKHFtcC11c2ItbGVnYWN5OiBQcmV2ZW50IHVubmVjZXNzYXJ5IFBNIHJ1bnRpbWUgc3Vz
cGVuZCBhdCBib290KQogIHdoaWNoIGlzIG5vdCByZXF1aXJlZCBhbnltb3JlLiAKLSBSZWJhc2UK
LSBMaW5rIHRvIHYzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjAyMDUxNjAyNDAu
NzQ4MzcxLTEtbG9pYy5wb3VsYWluQG9zcy5xdWFsY29tbS5jb20vCgpDaGFuZ2VzIGluIHYzOgpS
ZWJhc2Ugb24gbmV4dCBhbmQgcmVtb3ZlIDIvNiAob2Jzb2xldGUpCgpDaGFuZ2VzIGluIHYyOgpT
cGxpdCBwYXRjaGVzIDIvNCBhbmQgMy80IHNvIHRoYXQgdGhlIG51bGzigJFwb2ludGVyIGRlcmVm
ZXJlbmNlIGZpeCBhbmQKdGhlIHJ1bnRpbWXigJFQTSBlbmFibGUvZm9yYmlkIHJlb3JkZXJpbmcg
YXJlIGxvZ2ljYWxseSBzZXBhcmF0ZWQuCgpMb2ljIFBvdWxhaW4gKDQpOgogIHBoeTogcWNvbTog
cW1wLWNvbWJvOiBQcmV2ZW50IHVubmVjZXNzYXJ5IFBNIHJ1bnRpbWUgc3VzcGVuZCBhdCBib290
CiAgcGh5OiBxY29tOiBxbXAtdXNiYzogUHJldmVudCB1bm5lY2Vzc2FyeSBQTSBydW50aW1lIHN1
c3BlbmQgYXQgYm9vdAogIHBoeTogcWNvbTogcW1wLXVzYi1sZWdhY3k6IEZpeCBwb3NzaWJsZSBO
VUxMLWRlcmVmIG9uIGVhcmx5IHJ1bnRpbWUKICAgIHN1c3BlbmQKICBwaHk6IHFjb206IHNucHMt
ZmVtdG8tdjI6IEZpeCBwb3NzaWJsZSBOVUxMLWRlcmVmIG9uIGVhcmx5IHJ1bnRpbWUKICAgIHN1
c3BlbmQKCiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYyAgICAgfCAx
MCArKysrLS0tLS0KIC4uLi9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVzYi1sZWdhY3kuYyAg
ICB8IDIxICsrKysrKysrKysrKy0tLS0tLS0KIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29t
LXFtcC11c2JjLmMgICAgICB8IDEwICsrKystLS0tLQogZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5
LXFjb20tc25wcy1mZW10by12Mi5jIHwgMTUgKysrKysrLS0tLS0tLQogNCBmaWxlcyBjaGFuZ2Vk
LCAzMiBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkKCi0tCjIuMzQuMQoKVG86IFZpbm9k
IEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+ClRvOiBOZWlsIEFybXN0cm9uZyA8bmVpbC5hcm1zdHJv
bmdAbGluYXJvLm9yZz4KVG86IERtaXRyeSBCYXJ5c2hrb3YgPGx1bWFnQGtlcm5lbC5vcmc+ClRv
OiBXZXNsZXkgQ2hlbmcgPHF1aWNfd2NoZW5nQHF1aWNpbmMuY29tPgpDYzogbGludXgtYXJtLW1z
bUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBs
aW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCgotLS0KTG9pYyBQb3VsYWluICg0KToKICAgICAg
cGh5OiBxY29tOiBxbXAtY29tYm86IFByZXZlbnQgdW5uZWNlc3NhcnkgUE0gcnVudGltZSBzdXNw
ZW5kIGF0IGJvb3QKICAgICAgcGh5OiBxY29tOiBxbXAtdXNiYzogUHJldmVudCB1bm5lY2Vzc2Fy
eSBQTSBydW50aW1lIHN1c3BlbmQgYXQgYm9vdAogICAgICBwaHk6IHFjb206IHFtcC11c2ItbGVn
YWN5OiBGaXggcG9zc2libGUgTlVMTC1kZXJlZiBvbiBlYXJseSBydW50aW1lIHN1c3BlbmQKICAg
ICAgcGh5OiBxY29tOiBzbnBzLWZlbXRvLXYyOiBGaXggcG9zc2libGUgTlVMTC1kZXJlZiBvbiBl
YXJseSBydW50aW1lIHN1c3BlbmQKCiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAt
Y29tYm8uYyAgICAgIHwgMTkgKysrKysrKysrKysrKystLS0tLQogZHJpdmVycy9waHkvcXVhbGNv
bW0vcGh5LXFjb20tcW1wLXVzYi1sZWdhY3kuYyB8IDE2ICsrKysrKysrKysrKystLS0KIGRyaXZl
cnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2JjLmMgICAgICAgfCAxOCArKysrKysrKysr
KysrKy0tLS0KIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXNucHMtZmVtdG8tdjIuYyAg
fCAxNyArKysrKysrKysrKysrKy0tLQogNCBmaWxlcyBjaGFuZ2VkLCA1NSBpbnNlcnRpb25zKCsp
LCAxNSBkZWxldGlvbnMoLSkKLS0tCmJhc2UtY29tbWl0OiA5MTBiODI4YjIyYjdiOTEwNTRiM2Jk
NGJlNjc2YTAxNzQ0NGIwZTAwCmNoYW5nZS1pZDogMjAyNjA3MjAtcWNvbS11c2ItcGh5LWZpeC1u
dWxsLWZmMDk3ZjU2ZDFlNAoKQmVzdCByZWdhcmRzLAotLSAKTG9pYyBQb3VsYWluIDxsb2ljLnBv
dWxhaW5Ab3NzLnF1YWxjb21tLmNvbT4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
