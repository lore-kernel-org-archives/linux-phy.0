Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D280CCF2C4
	for <linux-phy@archiver.kernel.org>; Sat, 17 Oct 2026 17:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8KWJA01YeGGj3PQ0x6E24vtIRJAfjcus7NDMbZKyB4=; b=TxwDSWYPgtMUFw
	fBuFpnt+M46pZBfSbb2pIE7B9ncfWoj1R7MJo7nc6QzSSmxrYCwnAOKmC5nPQIev4fGwTsbo0+RJB
	x5C09qqsTwQe6YzVJ5fQCerXlTjWgycsa+iU+GJI6lKpLmRc7m58jXr0ERnZTmoEVBQw3cFjRlQI8
	JyPNlLT8SYOTSADwqQBI29Xluupgg0fyGxo4sXYOEkp8TjRBoJ4iNLH/5WfF4cp+8MGvdX+GWTgFE
	jlxHeDAOOWsgFsGpTogN5mHP3Hii4R7Oet6GeX60cQQx/7960wORBPSlfc4uNemq0btbPBbwIrqhK
	TEgjTxX+DV39DYkaCrqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7yp-00000004z2g-0TVL;
	Sat, 17 Oct 2026 17:13:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7ym-00000004z1e-04h1
	for linux-phy@lists.infradead.org;
	Sat, 17 Oct 2026 17:13:57 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69HG9rLC018855
	for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 17:13:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6r/UckFAEErFp1xd/71TZeckGQ6z2As9/Zh1h/yB9yw=; b=CKQN9chqQRxHZKyj
	JzCcWINtVC4GKdUDWx4qYSyI4c0WI5ayQxZ0H/v90RThEVhnf8CpSwtMnkJgf9Uq
	G24qti4LzcNbK458nEhf49yIfIbnkSoGdgs1kG4m3S6rwyS6wX/AjqW+nE2Opzdu
	WNAjsiLbDl9F6vtXtz+e6AzCzhy4r61tpszqBDDnDiiQRMaZtE7tfC2zYk4s6/eF
	4kPkSvKFDRgHo4VjrW171t9Dxs0eodlBogXnZUrG52q26QR+IqlMfm7KD4NAIjkz
	Nr7KSGUWvLxAWzQfjr7iX8atx/JSk27MT/Ln2qe//L4Hyc//L4k2QXTCMQ0JAa8Q
	nHlo6A==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hc26k19aj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 17:13:55 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-341eff9e381so2641009eec.1
        for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 10:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792257235; x=1792862035; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6r/UckFAEErFp1xd/71TZeckGQ6z2As9/Zh1h/yB9yw=;
        b=H/XudVikdgGq3DDZP5ZI9gJKRYt8jyZf1qTrNgrmz80cKtCb02prc6TCMkYNNnBmGl
         lUA2brRwyCD6Z40mWcJeJsN1YaMYJLwf/y0Vw8m09mlV0fI8057CrDxRVUEoRBtaBTBn
         CS8QIYSQQZ/C0EUBQD9rzuKiPdIIAVDb7rGbY18K9aA30tTXgCznXZITRPilYOaxmyFj
         jLKvQk6egEy02VhhElLSgbJdO2V53GmEaG9XQV4elxJADjgvT/qMn3dlHNkWRf1nccWU
         A0aFPXWU2hxVo85VOvG9nTcLzhwmY2942haQuxS05iZfVJP/grmpejLuQaCf9OkaoY/r
         LidA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792257235; x=1792862035;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6r/UckFAEErFp1xd/71TZeckGQ6z2As9/Zh1h/yB9yw=;
        b=ThMIBM/Htk18XPqzN8rLeyvvbsfip9N6TWzbFNK7CuPTCo49h/vH/KpotiDchIdpJC
         389pkckfC6LcgqJxj2hB+X7tAev2c2AoPt7sqlNvOcpiihrGzoZ+ePeTOt32+IBt3zA0
         9VRah96fvYDaHJoEXMhrM+qO+ncUt8EojjR2wgSIOyGxjaGNR3Zc8cjsUD/Hqmvbpiny
         pX2LhB1Rh+Pxrg1RQ/F0ocb0RXiiIScL9myUbweZzR+6ISxQ67WXyDUwCJjNDSyQ/5fg
         Syw7MrI8fXkmk35oBlKgBxFCVpmaRdolbFPSxtaxLwqn1ee+p9pHsw54fcCG/3tGilXj
         zrLw==
X-Forwarded-Encrypted: i=1; AKwUvBxXe8Q86S9BcTAD9Q7VDATYN/4uR1YUQvrH6aDMYNpMWQcxL3oOmJ8aHkYuI/UD9vG/YAtLUNeOvnU=@lists.infradead.org
X-Gm-Message-State: AFq9FYLnBPrXpcklkVsB1lxF58Qk1lTCGYoodyLXghhY9ve6CGvN3JPI
	sUhP6l9SWtjauWHSPWjDwAlac5rThNBVtAaGqgdMMsk8Qt/0FPELFafRTBlkyya6I19NibtXki2
	jNIr7uBWTb6jWNqzi1Tmz3AP2DD6XJD++iQJMpf2LkE8Jay33K86Az7a8BHbaG2oKYdPN
X-Gm-Gg: AYBFou3MTVx89wtF0dfKDvnEs+55ZjdrGEv2LDAkounhJIoBcvNzKKFY+yzjBhwHKKi
	2tvuBRs0HhCM9zG/yUL9xL+ufuyQgvLwoV4/ypqJWfnvoADlbUlbqRO09jX/dlytpjnjvoNbbeZ
	bPbquiKcUR+NC6IbBRYIBcHLLALlFEVYhk/+MUK3Ce0w72E4rGEkD4onXO70FY4w5n6xY5Jmt3H
	FIeT6OG7QAluRAW3dp5DbNNx8skTsK60ySOJlVh/fZ7Jggc05W8Dda8xtfJn82qf2qX5goDnkWm
	cF3kVTGwdy1cipn2KGjXUtyANHird4sOdzKvUrty8L4ZWf09vwGNRBUh35H2zz6PdQn+SeSR9wo
	M2rUyzZHrjRhKNzLfXvfwFmuil5owVg==
X-Received: by 2002:a05:7301:6447:b0:35e:2c6:d46e with SMTP id 5a478bee46e88-361a312a4a0mr5991261eec.41.1792257234710;
        Sat, 17 Oct 2026 10:13:54 -0700 (PDT)
X-Received: by 2002:a05:7301:6447:b0:35e:2c6:d46e with SMTP id 5a478bee46e88-361a312a4a0mr5991237eec.41.1792257234186;
        Sat, 17 Oct 2026 10:13:54 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-360813b6e33sm17893966eec.7.2026.10.17.10.13.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2026 10:13:53 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Sat, 17 Oct 2026 22:43:13 +0530
Subject: [PATCH RFC 6/6] phy: qcom: mipi-csi2: Add lane mask calculation
 for C-PHY
MIME-Version: 1.0
Message-Id: <20261017-cphy_support-v1-6-8b0e1237ce95@oss.qualcomm.com>
References: <20261017-cphy_support-v1-0-8b0e1237ce95@oss.qualcomm.com>
In-Reply-To: <20261017-cphy_support-v1-0-8b0e1237ce95@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>
Cc: Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792257199; l=2691;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=qb8oumom/2PvdHzndETk92xid5VBCe3skBrkXMR5kuk=;
 b=5Z4ib2LnjfubTXuDJJ7kiwx/2IhiPqctYmRM+7eplTS5rb59j7to+uW3kA1nvHLdH7YdpY7Bb
 dvgIQioOe4fC/FtdKCYSWiYENddLBE5VezRTXKnQVSj06hsRhKqO3Xk
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE3MDA2OCBTYWx0ZWRfX0GGgMp4lXe7u
 LDiH/UCEWglYUp73fhk6nL4jYv+bVKrgwgg8dFF5mr6LlYDCkumph13voa65Y6azpcvwXg2CBQC
 LyuDi5MTfz+plQEIGUv63Ws143XY/TaFclaOlJfXLSGBlbIvOpL3Zeccppo4PkMyj96RWyA1Ylz
 twciQcNTQVuS3gqh8TtYRCamzBg9iXEc/2CHUcLLd1YDeTEAuMKeTwA+T5pJksw+2jkM3//l+mN
 /E+guiO8hAYYiykYNERGcKl5HKDpuYywy8vSkxVh7OrBBQrFjAXFW8t27QfGATUnUU5+JUIVThW
 f+KF5RjS+z9/QF+vNcnxlX2TmwI6kqsVrwAwGyEir3WmHHHap1vVnqy9wlq/jui4xtIFDEMizJa
 3pVYXI7Z18RXMiiekOXOHYJeiIBaUUtSn0ncmMPtpZlLQhkBg5B8YtP8TtbgNikztl2kNqO1Qg0
 gmNumRGZ3Jk6lM3mwbA==
X-Proofpoint-GUID: VloCfmRfOvNTG2Za5P39Xe9IMLl6wUXk
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE3MDA2OCBTYWx0ZWRfXzAM7JNypg3Hu
 KugP+Ht+j7H9/pJ8XB6bfIfWw1n10GnTZB1bb/2uAUPqOjPcmiyBur/ZhcTsui186mQZpVKo7vC
 +BSaWTTeAEBKrnpvZgcKKcd8P/3Uc2o=
X-Proofpoint-ORIG-GUID: VloCfmRfOvNTG2Za5P39Xe9IMLl6wUXk
X-Authority-Analysis: v=2.4 cv=Cowq4X4D c=1 sm=1 tr=0 ts=6ad3acd3 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=32Ig6A5ggYWErfKYfvQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-17_05,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610170068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_101356_090759_659CACA1 
X-CRM114-Status: GOOD (  14.23  )
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

Qy1QSFkgdXNlcyB0cmlvIGxhbmVzIGluc3RlYWQgb2YgRC1QSFkgZGF0YStjbG9jayBsYW5lcy4g
VGhlIGV4aXN0aW5nCmxhbmUgcG93ZXItdXAgbWFzayBoYXJkLWNvZGVzIEQtUEhZIGJpdCBwb3Np
dGlvbnMgYW5kIGNhbm5vdCByZXByZXNlbnQKQy1QSFkgdHJpb3MuCgpFeHRyYWN0IGNzaXBoeV9n
ZXRfbGFuZV9tYXNrKCkgYW5kIHNlbGVjdCB0aGUgY29ycmVjdCBiaXQgcGF0dGVybiBiYXNlZApv
biB0aGUgY29uZmlndXJlZCBQSFkgbW9kZS4gRm9yIEMtUEhZLCBkYXRhIGxhbmUgYml0cyBhcmUg
c2hpZnRlZCBieSBvbmUKdG8gdGFyZ2V0IHRyaW8gcG9zaXRpb25zIFsxLDMsNV07IGZvciBELVBI
WSwgdGhlIGNsb2NrIGxhbmUgYml0IGFuZApldmVuLW51bWJlcmVkIGRhdGEgYml0cyBbMCwyLDQs
Nl0gYXJlIHNldCBhcyBiZWZvcmUuCgpTaWduZWQtb2ZmLWJ5OiBOaWhhbCBLdW1hciBHdXB0YSA8
bmloYWwuZ3VwdGFAb3NzLnF1YWxjb21tLmNvbT4KLS0tCiBkcml2ZXJzL3BoeS9xdWFsY29tbS9w
aHktcWNvbS1taXBpLWNzaTItM3BoLWRwaHkuYyB8IDQwICsrKysrKysrKysrKysrKystLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1taXBpLWNzaTItM3BoLWRwaHku
YyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLW1pcGktY3NpMi0zcGgtZHBoeS5jCmlu
ZGV4IGQ5M2ZkOTg0NWI1MGJkN2U1NjIzMDEzYWVjZDZkYjQyZGQ0OTFkY2EuLjVlNzAzNmNiNzIw
NWQ3NWM5ODhhMjgxZWNlZDYwNjU4YjQ1YzczYzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLW1pcGktY3NpMi0zcGgtZHBoeS5jCisrKyBiL2RyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLW1pcGktY3NpMi0zcGgtZHBoeS5jCkBAIC0zMjIsNiArMzIyLDM1IEBA
IHN0YXRpYyB1OCBwaHlfcWNvbV9jcGh5X3NldHRsZV9jbnQoc3RydWN0IG1pcGlfY3NpMnBoeV9z
dHJlYW1fY2ZnICpjZmcsCiAJcmV0dXJuIHNldHRsZV9jbnQ7CiB9CiAKK3N0YXRpYyB1OCBjc2lw
aHlfZ2V0X2xhbmVfbWFzayhzdHJ1Y3QgbWlwaV9jc2kycGh5X2xhbmVzX2NmZyAqbGFuZV9jZmcs
CisJCQkgICAgICAgZW51bSBwaHlfbW9kZSBtb2RlLCB1OCBudW1fZGF0YSkKK3sKKwl1OCBsYW5l
X21hc2sgPSAwOworCXU4IG9mZnNldCA9IDA7CisKKwlzd2l0Y2ggKG1vZGUpIHsKKwljYXNlIFBI
WV9NT0RFX01JUElfQ1BIWToKKwkJb2Zmc2V0ID0gMTsKKwkJYnJlYWs7CisJY2FzZSBQSFlfTU9E
RV9NSVBJX0RQSFk6CisJCWxhbmVfbWFzayA9IEJJVChsYW5lX2NmZy0+Y2xrLnBvcyk7CisJCWJy
ZWFrOworCWRlZmF1bHQ6CisJCWJyZWFrOworCX0KKworCS8qCisJICogQ1NJX0NPTU1PTl9DVFJM
NSBpcyBhIHBoeXNpY2FsIGxhbmUgcG93ZXItdXAgYml0bWFwOgorCSAqIC0gQml0cyBbMCwyLDQs
Nl0g4oaSIEQtUEhZIGRhdGEgbGFuZXMoTE4wLCBMTjIsIExONCwgTE42KQorCSAqIC0gQml0cyBb
MSwzLDVdIOKGkiBDLVBIWSB0cmlvIGxhbmVzKExOMSwgTE4zLCBMTjUpCisJICogLSBCaXQgWzdd
IOKGkiBELVBIWSBjbG9jayBsYW5lKExOQ0spIGRlZGljYXRlZCBjbG9jayBlbmFibGUKKwkgKi8K
Kwlmb3IgKGludCBpID0gMDsgaSA8IG51bV9kYXRhOyBpKyspCisJCWxhbmVfbWFzayB8PSBCSVQo
KGxhbmVfY2ZnLT5kYXRhW2ldLnBvcyAqIDIpICsgb2Zmc2V0KTsKKworCXJldHVybiBsYW5lX21h
c2s7Cit9CisKIHN0YXRpYyBpbnQgcGh5X3Fjb21fbWlwaV9jc2kyX2xhbmVzX2VuYWJsZShzdHJ1
Y3QgbWlwaV9jc2kycGh5X2RldmljZSAqY3NpMnBoeSwKIAkJCQkJICAgc3RydWN0IG1pcGlfY3Np
MnBoeV9zdHJlYW1fY2ZnICpjZmcpCiB7CkBAIC0zNTEsMTYgKzM4MCw3IEBAIHN0YXRpYyBpbnQg
cGh5X3Fjb21fbWlwaV9jc2kyX2xhbmVzX2VuYWJsZShzdHJ1Y3QgbWlwaV9jc2kycGh5X2Rldmlj
ZSAqY3NpMnBoeSwKIAlpZiAoIXNldHRsZV9jbnQpCiAJCXJldHVybiAtRU5PREVWOwogCi0JLyoK
LQkgKiBDU0lfQ09NTU9OX0NUUkw1IGlzIGEgcGh5c2ljYWwgbGFuZSBwb3dlci11cCBiaXRtYXA6
Ci0JICogLSBCaXRzIFswLDIsNCw2XSDihpIgRC1QSFkgZGF0YSBsYW5lcyhMTjAsIExOMiwgTE40
LCBMTjYpCi0JICogLSBCaXRzIFsxLDMsNV0g4oaSIEMtUEhZIHRyaW8gbGFuZXMoTE4xLCBMTjMs
IExONSkKLQkgKiAtIEJpdCBbN10g4oaSIEQtUEhZIGNsb2NrIGxhbmUoTE5DSykgZGVkaWNhdGVk
IGNsb2NrIGVuYWJsZQotCSAqLwotCXZhbCA9IEJJVChsYW5lX2NmZy0+Y2xrLnBvcyk7Ci0JZm9y
IChpID0gMDsgaSA8IGNmZy0+bnVtX2RhdGFfbGFuZXM7IGkrKykKLQkJdmFsIHw9IEJJVChsYW5l
X2NmZy0+ZGF0YVtpXS5wb3MgKiAyKTsKLQorCXZhbCA9IGNzaXBoeV9nZXRfbGFuZV9tYXNrKGxh
bmVfY2ZnLCBjc2kycGh5LT5waHlfbW9kZSwgY2ZnLT5udW1fZGF0YV9sYW5lcyk7CiAJd3JpdGVs
KHZhbCwgY3NpMnBoeS0+YmFzZSArCiAJICAgICAgIENTSVBIWV8zUEhfQ01OX0NTSV9DT01NT05f
Q1RSTG4ocmVncy0+Y29tbW9uX3JlZ3Nfb2Zmc2V0LCA1KSk7CiAKCi0tIAoyLjM0LjEKCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
