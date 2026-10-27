Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14696606A322
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 04:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1qhRxPPq;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=iWdUgzXB;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=OoSSnIdD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=fMWrXNGb30yqdzL9w3AwX4mbRc94boHEWUN+35SAln4=; b=1qhRxPPqnrmlsHGdmlzs8NmogB
	Ec0Ktr6qUbmF+0GCKUhu7MlIzIMikJk/QfMq2uoKtk2YtQaAgCpjOnjpai5ywGMST1U1UVLbhxdmo
	dCaHuWB7cOv9PHxrqOYeJif5baiz6WLxDcY0NP535vrcJRgfDUbEtio6RzmWHLRGNnGd+IJtlR0b5
	cs+18o8LXDUDnmfYp4QQOfIr5NBGNa2CfAUJ+dbgXrJtAf5QTNeuX2c8EX/UR0WkWXaxekUagvpJq
	Qz6v4s7kugUH6MmY4zL+q9wODTf0x3BLVeMin3S2+nMa1zLQnErUeKO07yFWOqhuD5N1sV7cmnAHj
	mf031C7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLYly-00000003k0u-2lfN;
	Tue, 27 Oct 2026 04:26:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLYlv-00000003k0T-2xtu
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 04:26:52 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69R2ExIr511972
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 04:26:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qnmd60cdhtCtvxzhnPhgKIcxLf3UawWMBkYI+AE2XFM=; b=iWdUgzXBcnZtNJQ5
	49eWB9KnM2mby/Ra9xncGXEAhRUpjwiKpTbXVN4ctA+nP7FNDaTqVB+Np5I/2CRQ
	WWmtcC6JYZ6lSc1VeGB05ZZFQA4VkLoB4E8ZEbbIUUw+49EJbKMo8+ZB88dOHZap
	m6xyC8m6Q30X7Ped2XD0S4+UChoAp8KswWK7hoPtMOxhghr29dJGOUxW8hcQ4XPO
	KD7LerWeTdCw/0OYr0TUELNPzPhJiNUDBR4QqQkMuHpKSAkgIXyF2HGNlj9TCb7z
	ra+MPyL9MOAnO+uz5QRgmWS0rYMtw+qj/2W30vw0J7el0k1I2ntiZ0vLATHtkOdw
	Q2XysQ==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hj4cpbsgb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 04:26:50 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-5e96da6516bso3919326e0c.1
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 21:26:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793075210; cv=none;
        d=google.com; s=arc-20260327;
        b=j1m413SMjX9iL5OaCdVjayzA0JYnsmOrWTNC974IPCwzAm8JnP6zi3Qv3rPD63rKCj
         jTtW5uOOSdUeBHQp3QU42sLe/wwSnEk3Q3RfeQw/eM7ZRKiIOqNi9cmw3yZHXERPvlVo
         Xxwdw3BiEpyYRWrx7QAwP8tJO6eC78LK5p0j4GPKuHcT4akPYvkDrRiyGIWJptsgr5yf
         aagIhVEMgvwVm4SYdpv5JboDsuaxn/woCYA1bUC+HMSEKMti9AwQ0IpZSI7Ja/306PvG
         4YzueMD1tEAOsp8ACPVa2gmLBhizSbxMQhWWXBp1GoZsQzggEzUkvl4PYU/SdNgbEcFv
         lpBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qnmd60cdhtCtvxzhnPhgKIcxLf3UawWMBkYI+AE2XFM=;
        fh=BgkbEjAGvYJ+pMlkwk8jER1T7TJGhfUZV7NXjrBvbsM=;
        b=r/rSXXnNI1OM7viHaGpD1zykFyCdn1AF0OuBRft8ngsgZ4IIFp2aXacb3dQRzehlmV
         qPunrLNak/W8hSAntIdrFeP8vrfedi9CJMLThAmbGeJRq/05AL2gtSu5bCpfs2VISnuQ
         jP0gTCI0zTznFageDfh5VpGFY7DjX4nq9csXBanAjHzvp6DyY9377jUFYcSAw2cFBcZR
         or7+12ifqKOZicFTPcTOplm1z9PnzMJWOMJ4+vj8MYD5R4vKXM0GBa/bQEWqxLd3LLkL
         heTZ6PKD9QfsimeokQzm4xLF4EzzYieJJoesu7C/g48ny12CuamlAAHg1Py7/ynA+wuY
         YeWQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793075210; x=1793680010; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=qnmd60cdhtCtvxzhnPhgKIcxLf3UawWMBkYI+AE2XFM=;
        b=OoSSnIdDSr1YvCn7J44GPegSwtwmcaIxfmfphMgccgs0i+1UL0I1WkScFsC5S+fB6K
         LKHjZnc14WegDyVQzgLtygPva+VcYtqAnYvh/Pdty1qyXBfYBaJunFZuqfp84rShJCf8
         ALGVXOlx28L6b3QE7EFl5sJYQi+tWJajtoT7YzJlotnE/2R7JDzacMHbWn1UyJznhNh1
         3jRlrUOuZD6jbGgpn5faSl0hterl414IbXp0mdVfBvJdb2K8in3fyB5Zj+S8ChUsW4dW
         s3M1fL2cdQBw7AV5EbiFykLkImbFUkLjp6J2M8mCUwPn4Jc62/8G0GakxpPwG/sh1/WL
         KzaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793075210; x=1793680010;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qnmd60cdhtCtvxzhnPhgKIcxLf3UawWMBkYI+AE2XFM=;
        b=pkOrHHxWmCVdlZya4wYg5BXLEj9ZnSX1ZM6/Han7049h7R+o0He8Vd5oGfnC1hsdGD
         KuPNx1yAWDWHoNQyBP+NNwDhM0LTyHtpuGf65Gvlp9OJmkqdD2a3TcAxFrCYBA/YpCW5
         NmVL+mVFFJEA0xCRuoob3vm41wd1Ea4+6GxbKYr14LKp1lDQeosRpQF0dVzTO4mqjNj+
         3Kcqt9bVJ5aOxCux6Rsdi4ef0CCAs0yNn3m/BFtn3C/AGIzQjrDeqgGfLQzbPTdJJVTO
         53PeNnsmXB5tvrhHsb7/FIVcxWOhIvbd4PPQEW4t0zuCllENVvIrKfb+tFn1c7kz8rrd
         UDSA==
X-Forwarded-Encrypted: i=1; AKwUvByYocbu8bDI8TrG6LwiXpHAGHm1dmiLarJAilHnCo4cYtOFL8oA1shHxjYPz2jSAoyEX8JszbW5S48=@lists.infradead.org
X-Gm-Message-State: AFq9FYLOqyu8mrWOcRcEjc+0T+60QKkYuQTUrEK79pCnshgxZMA9iyyU
	6pv1PiuPPbNoBXiayPFPzOOlPiMPBv+NU4ni2iuYeLgO92qopO1NDZUIiQTriocxhHFXLvDg+Nl
	fF7Qt0eD1WSd7bsdkZPflrjwWjS1QdVxcuWSFjcjVs+i24q5x5sNDfH1ymffaIlHgtMlQJjTp6T
	8XXLtXWnIQg7hRXyN9YdHr56Xo9/cQaynqsIitmjecvvY=
X-Gm-Gg: AYBFou3QnBbjcxZuhGXhnDodgOjRIuj304i6B7GgtZmc3nWVK4lSif3CPnjeqVIfkj/
	f165XU1kFqxYcYap1+KZLU4V1/f9+a63p9c0b8ie+sW/bIe5HFTzI0onYTNa3W30++1mqbMFxrm
	zBzPyfXn1thUDY/heUiRmg6t4yHvJB1cA3uBEo7wkbjtmqP+Ri4xsm2851NoAlOfzR+t5EmRedQ
	MlCYDCuONxwf6/UIQ==
X-Received: by 2002:a05:6122:d1c:b0:5ec:a9e:d80f with SMTP id 71dfb90a1353d-5ec2323eb13mr3595408e0c.8.1793075209712;
        Mon, 26 Oct 2026 21:26:49 -0700 (PDT)
X-Received: by 2002:a05:6122:d1c:b0:5ec:a9e:d80f with SMTP id
 71dfb90a1353d-5ec2323eb13mr3595406e0c.8.1793075209303; Mon, 26 Oct 2026
 21:26:49 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261024-kaanapali-camss-v22-0-7da3ea49c8a1@oss.qualcomm.com>
 <20261024-kaanapali-camss-v22-11-7da3ea49c8a1@oss.qualcomm.com> <CAFEp6-0b0+daADC6odCCgxgsBYEV6ZJx1eDUNHG=Vi60cA3ZFQ@mail.gmail.com>
In-Reply-To: <CAFEp6-0b0+daADC6odCCgxgsBYEV6ZJx1eDUNHG=Vi60cA3ZFQ@mail.gmail.com>
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Tue, 27 Oct 2026 12:26:37 +0800
X-Gm-Features: AclHuK8va6xRV24M9rgTF_POC6JkORw-Ok48zk8PcpaxNQ1oNylaL8QpCWYsZNM
Message-ID: <CACbMrhpYMs6CvAUzJbZDd4+JkpsUSoJaXHcF-A7a0wNoZQDhgQ@mail.gmail.com>
Subject: Re: [PATCH v22 11/14] arm64: dts: qcom: kaanapali: Add CAMSS and
 CSIPHY block definitions
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: "Bryan O'Donoghue" <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI3MDAxNyBTYWx0ZWRfX/JOU+dn9cmsr
 KIBKEEtKTloQgy2fjSaUTSE5LkR8umZKs/P7WZyjSR3pAkJ7R3rwwJ3i1SFwiYNjTcJ7H0bfgt7
 jQtTEdM/qNAafTQ4pFJvCDjIbfEhqJcfJRNS99NOKXOh0bCEh4wfjgHHqvxxEfU/2KCpqB2ie7m
 kNrQetHw74mTG0XcjzabwHImJViWaGa1PQ+MwWkEwnOD5g5DXXhegMQ8yvKn5uOtLZMz6Obqou1
 A7BkJAQ3a2+qQg4ug/syE1mWy37SAAFiH9rzTSXfHCTwqTstxfh1Aby0OfN9zQYhVcpL9cO/nuk
 U096cWwHrX+Zq4shJh59/FZ/eFByi9YUONuiQgKEDmhe3oWlq2/P7/rGnBjxf4+NKBdFCYeBt0b
 G68rdY5ghKWEwNxLok7yGnLIoLL/XKh5T+FLabcCwdTUO/aJ4knPLztEpIj/I1DFxarsGLfSYvh
 ggHNlRt6B8d8FGBUcLQ==
X-Proofpoint-GUID: s1smWGWqLViPF7nmZz7pSqecrgWYxBwZ
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI3MDAxNyBTYWx0ZWRfX7RhM5MxgyEJe
 I1oazX2WMmBsJojGcd3gN65C8wnHaNNXpn8xMq/ec0oyQkPcNlKCwJEIXrhKIU+t1IQkLtOhC0N
 NdqXbAu6oKApK4wvOD+rrJSXpc72Pws=
X-Proofpoint-ORIG-GUID: s1smWGWqLViPF7nmZz7pSqecrgWYxBwZ
X-Authority-Analysis: v=2.4 cv=TboDJhQh c=1 sm=1 tr=0 ts=6ae0280a cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8 a=6iLt9ATBiMRDfCnMGdoA:9
 a=QEXdDO2ut3YA:10 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-27_01,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 spamscore=0 clxscore=1015 adultscore=0 malwarescore=0 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610270017
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_212651_886433_189047DE 
X-CRM114-Status: GOOD (  14.54  )
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
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTAvMjcvMjAyNiAxMjoyOSBBTSwgTG9pYyBQb3VsYWluIHdyb3RlOgo+IE9uIFN1biwgT2N0
IDI1LCAyMDI2IGF0IDQ6MTfigK9BTSBIYW5neGlhbmcgTWEKPiA8aGFuZ3hpYW5nLm1hQG9zcy5x
dWFsY29tbS5jb20+IHdyb3RlOgo+Pgo+PiBEZXNjcmliZSB0aGUgQ0FNU1MgYW5kIENTSVBIWSBi
bG9ja3Mgb24gS2FhbmFwYWxpIHNvIHRoYXQgY2FtZXJhIHBpcGVsaW5lcwo+PiBjYW4gYmUgZW5h
YmxlZCBieSBib2FyZCBkZXZpY2UgdHJlZXMuCj4+ClsuLi5dCj4+ICsgICAgICAgICAgICAgICBj
YW1zczogaXNwQDkyNTMwMDAgewo+PiArICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxl
ID0gInFjb20sa2FhbmFwYWxpLWNhbXNzIjsKPj4gKwo+PiArICAgICAgICAgICAgICAgICAgICAg
ICByZWcgPSA8MHgwIDB4MDkyNTMwMDAgMHgwIDB4NWU4MD4sCj4+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIDwweDAgMHgwOTI2MzAwMCAweDAgMHg1ZTgwPiwKPj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgPDB4MCAweDA5MjczMDAwIDB4MCAweDVlODA+LAo+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICA8MHgwIDB4MDkyZDMwMDAgMHgwIDB4Mzg4MD4sCj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwweDAgMHgwOTJlNzAwMCAweDAgMHgzODgwPiwK
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPDB4MCAweDA5M2ZkMDAwIDB4MCAweDQw
MD4sCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwweDAgMHgwOTNmZTAwMCAweDAg
MHg0MDA+LAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8MHgwIDB4MDkzZmYwMDAg
MHgwIDB4NDAwPiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPDB4MCAweDA5MTUx
MDAwIDB4MCAweDIwMDAwPiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPDB4MCAw
eDA5MTcxMDAwIDB4MCAweDIwMDAwPiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
PDB4MCAweDA5MTkxMDAwIDB4MCAweDIwMDAwPiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgPDB4MCAweDA5MmRjMDAwIDB4MCAweDEzMDA+LAo+PiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICA8MHgwIDB4MDkyZjAwMDAgMHgwIDB4MTMwMD47Cj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgIHJlZy1uYW1lcyA9ICJjc2lkMCIsCj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICJjc2lkMSIsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICJjc2lkMiIsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJjc2lk
X2xpdGUwIiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImNzaWRfbGl0
ZTEiLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiY3NpdHBnMCIsCj4+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJjc2l0cGcxIiwKPj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImNzaXRwZzIiLAo+PiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAidmZlMCIsCj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICJ2ZmUxIiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgInZmZTIiLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAidmZlX2xp
dGUwIiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgInZmZV9saXRlMSI7
Cj4KPiBJIHRoaW5rIHdlIHNob3VsZCBwcm9iYWJseSBzdGFydCBhZGRpbmcgdGhlIENBTVNTICJ0
b3AiIHJlZ2lzdGVyCj4gcmVnaW9uIGFzIHdlbGwsIHRvIHByb3ZpZGUgYSBtb3JlIGNvbXBsZXRl
IGRlc2NyaXB0aW9uIG9mIHRoZSBDQU1TUwo+IGhhcmR3YXJlIGJsb2NrLiBUaGlzIHJlZ2lzdGVy
IHNwYWNlIGNvbnRhaW5zLCBhbW9uZyBvdGhlciB0aGluZ3MsIHRoZQo+IENBTVNTIGhhcmR3YXJl
IHZlcnNpb24gaW5mb3JtYXRpb24uCj4KCkFjay4gSSBkb3VibGUtY2hlY2tlZCBhbmQgZm91bmQg
dGhhdCBBZ2F0dGksIFNoaWtyYSwgYW5kIFFDTTIyOTAgaGF2ZQphbHJlYWR5IGZvbGxvd2VkIHRo
aXMgbmV3bHkgaW50cm9kdWNlZCByZWdpc3RlciBsYXlvdXQuIEknbGwgdXBkYXRlIGJvdGgKdGhl
IGJpbmRpbmcgYW5kIERUU0kgYWNjb3JkaW5nbHkgaW4gdGhlIG5leHQgcmV2aXNpb24uCgotLS0K
QmVzdCBSZWdhcmRzLApIYW5neGlhbmcKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
