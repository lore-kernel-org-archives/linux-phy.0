Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9196E606A322
	for <linux-phy@archiver.kernel.org>; Wed, 21 Oct 2026 13:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ClssxAtq;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=HtE8uGub;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=V1oQ0Zv3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+QNFJs83oxs2HMm+ORRS+P1bBOXJ9R5ZA/ntgKxjvmM=; b=ClssxAtq3FZb2L
	8zd8lcGa/GatCc1YtBV0ROfeyzF7KAkmb2jJU4eOJNp1LFun04sPAzb+AIXk4qGawc9jiikJH8Phe
	nS/zxdKAwfG6zBoaMz6TG8lX+Ok1Ll08/RD/tOhJaDIKfxtAiyS2x+aTyiS9bk6m3fRL0XGY9NgxK
	VM3epu3XyeN+UkfF0Ws3KeEKIRTcNAHELm4tsqnY8+eBKBpQTyvnqlwNjT20ZNyLj1pMMA4H8kIqh
	EdZA1L+RG1N5rDCAcpZH8qDJkpKQrEZ187eutgQORYndvey+cJkXgM/zBCP1r7hzIh/XT0z+dPv46
	zTB2JVd7xmxIdMmryaSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJVwT-0000000Br2B-0mP6;
	Wed, 21 Oct 2026 13:01:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJVwR-0000000Br1n-0tJ9
	for linux-phy@lists.infradead.org;
	Wed, 21 Oct 2026 13:01:16 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69LBgQGB1568975
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 13:01:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gVHN/KsBNoDpAY9h12G6JNzSl6eNu9q0U6rV/X0S7aE=; b=HtE8uGub3OuGwgUi
	LN4O1pHtrxZhZHfwkbZAYh56Waz3+wzJpEIkMSpjAu/Vbt6wT9CEqEm6Z/GyQ9HO
	zBd12tdyz3Nnm9ltd6Zf1TgU/xI/QTj7Tizc01Sbz2ZpyhbrYdnlKykwZdeQq1is
	7SfpCLhApJupbVSE7EHVAWEm10gcTxxWgw7EHUAbnZsfKuI8r/fTJJ2MGFX5hKtY
	ywj97sa03Oi2TeuPau2XLUbpJzFu9uUeGQRp/Kd3YolAPWIUU7KjE2iv9bBNcL+7
	IPtCe/vzjtcMSPh9OAX15PfKK8/3s5CNxmw5k1nI+qmQRGwkuuqWt++lHci6DBYD
	o9M96g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4heda4uybw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 13:01:14 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93e49a1d3b1so176566885a.2
        for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 06:01:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792587674; cv=none;
        d=google.com; s=arc-20260327;
        b=p588tdtlM8qybRSumhlbuPL3ZnP+UHew8F9wDaE0443jo21bxFPfbQ0zNS5hrbhvih
         PcCuoP2Yb2paEPrTXma+QPOsxqrv7X46/TXShhqlNbbLgmz1aceqdf+QpZ0Cejy1FuZM
         41QRRLitCAFuUN5sB0Pfd9S4toS0InxmbJw8ea63Qg4oQYwaNPHNtU+OX3xzsnWd80lT
         s9+8Y2dQWyh06dO1i7kSL6UfyIVhvvpWJv4tUpnRXDF9ouluKrTKIbdf5xNVIjI+Qwbc
         9tZLUaa/q9rCnX+jmwdY6BDvq3GiNmZ5KYvibjsMKi8CFlfgHd34J6PBexy1RjVexuwp
         rYbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=gVHN/KsBNoDpAY9h12G6JNzSl6eNu9q0U6rV/X0S7aE=;
        fh=IoS1C2P8husm/JPl/s1TV/KdQaTf7cSlQStnhrdCXW4=;
        b=TE6i+FRxQaFtSBpY/jDnJoVrOpHSY9unTxzOnNmtuK809sz5mrTliGlaFFXKGWXl7x
         QV2YvJ1ikDWYlGYXJGWsiLOlOBoXKBJhGY5yYS4/pKQ/hqnwrkvtYQJZ+l2hZVOETc6M
         FkJ8oOkfuwkjNgXvBeIkUeDtS8+/muiPyfxTUuMwSEmfGyZcVxZupVrQ3X2q6U5OyRD+
         WUjP8tFqNC1kTFI+Ra7n5F/9iaEOEWwu2b8GiyhL0gUZ8cS4pvphSAd/L3Ez4zZ1Tf9X
         6dExwJRFdfciZ7hOmYIrw57ZECMJaa4sAvRbCDULPa/UywRGrOQbMKWJhSWmUy11Udxk
         dJYA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792587674; x=1793192474; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=gVHN/KsBNoDpAY9h12G6JNzSl6eNu9q0U6rV/X0S7aE=;
        b=V1oQ0Zv3vGSeQG+e60yk9QKFWjN1weN8ExfgxaIVg6F0aiMG8u6eaCAM/Zvzv7ufw7
         dqJH0GB9Rg8VBeyxMw7p2tkWrIfbTlMRFFX0qBps9diJwd0gQnBp2Rsb0ByJjJd1xeZg
         cBtzAQ38KxYRdFOFWNGt40K+mY7o2Lhi8367re8tm6exWzLVMsMbif0jNhFyu1DeyeXC
         SYXA/XGFGlx9nlvx7cr1jXflaJJy/H9obLXx3SgSsWYBWl1XvY2OgXpy5PHw1youeW88
         1VMiR+nwxKswq0/+R3Cgs5l2nyQ1xVbTyJLQ/RIAp3qbYBIrf/MEbyb1OhFC76uBUdSE
         wdsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792587674; x=1793192474;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gVHN/KsBNoDpAY9h12G6JNzSl6eNu9q0U6rV/X0S7aE=;
        b=0Nr7T/c3H95+JmbI569rR1ftp64Sj61LF57CIv+tF9lkUUiU9fntqBiUZo7XMBMe0L
         /9iUog5nwFlortT23zPhQnpZ8lr583pIfJcbGNPJUQf6fknbiadRgwO6Pm27dILfwfcT
         RADOpsvdmGkoNqiELSIKNojun2wyu3Y3zUJ6lQJZs4wloXjv+zw+1nbEUxDSZ1doabxP
         GAEIQRyed3wz2iWbcgOf6+dOzjd3VzAx+Taz/GhHweEY6wSQ68IhXbZdpgOJnv8BkQC3
         iXrZpuntnZT5FY1vZU2Xx6m4SKAMuU/Ice6CAi4pUIsJo0k10E802bseUj56ob42gC8u
         0SNA==
X-Forwarded-Encrypted: i=1; AKwUvBwp4gv94yyU0mlx2h4/p9m4BFMcjAvZ/jzfOz1R8yDaR3ORkgbR+6AocfuEYehLK+21oIQk/AZ78T4=@lists.infradead.org
X-Gm-Message-State: AFq9FYI1udrIu0YMHLWF4ABvS7brh+3+y11RbIOP+6WZpUeWedrnbJkh
	fXPXC+oNt0PhbYS0Z+p2/Z/TBmKG8njoANbxhEJsDlnHquMXpHQRmpCuhnP6zLHZ5jyJWp6Bval
	l8H/aGDJO9hRCa52Nuws82K/Tci8LcBU5u96sex3M2ACNzrXD/yVrJrggOGUisSCOikYfXtFrvk
	qsMd3QYQvXS799CCl/E8LmEeEi8MAqZzXGiixk/f/seGY=
X-Gm-Gg: AYBFou1g+BqvQnakT5YgfJXS8dNcZR18rTwEQaS7qraSgW4nuJUH6sltwxZ6vRnuAO3
	CYUjCpQkkROf7GnjIPa9z+rIVMDly0G1C3d0+9Qme5LwCPepcoDZP9sMIEoI3KoBwegoGrBtDKa
	R1DYwCc+BJbI6ceCbrB8o/axr7AzStE9+ifM0Q90W+sHD4WRjWDrhaAzCVyx/nrM02Q2GwBibo5
	3gnHGmSVxk0JOtWaR4cf2N3hy2uknrQPH5PsDHLBPEk3nx3MIXx9QXDc+nAmZuhi+ms8/xWVcI=
X-Received: by 2002:a05:620a:394a:b0:93f:34c9:9248 with SMTP id af79cd13be357-93f57f04eebmr415420285a.22.1792587671774;
        Wed, 21 Oct 2026 06:01:11 -0700 (PDT)
X-Received: by 2002:a05:620a:394a:b0:93f:34c9:9248 with SMTP id
 af79cd13be357-93f57f04eebmr415365085a.22.1792587666477; Wed, 21 Oct 2026
 06:01:06 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
 <20261011-kaanapali-camss-v21-4-04fd28d815c6@oss.qualcomm.com>
 <3843110c-4766-4352-ab2a-6d3017336534@oss.qualcomm.com> <dbde0e35-8246-4f69-b3be-cd617a1767d9@linaro.org>
 <c1a0dfe9-34bb-4d24-9644-0f758aff0af0@oss.qualcomm.com>
In-Reply-To: <c1a0dfe9-34bb-4d24-9644-0f758aff0af0@oss.qualcomm.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Wed, 21 Oct 2026 15:00:54 +0200
X-Gm-Features: AclHuK-8q0aX4k5XsAnz-t3dRuV7UwkayPffcJ2itPbwK18KPuujnhjZ4aFGTag
Message-ID: <CAFEp6-16PUJzLKZUBrC2g7oh8pN_Tygrf6wYX53nL+YM4ZvunQ@mail.gmail.com>
Subject: Re: [PATCH v21 04/14] media: qcom: camss: Issue stream-on REG_UPDATE
 from CSID
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
        "Bryan O'Donoghue" <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: wWRa8NjmVQz7rjSmhGEpnXTj2gU7ZCQ1
X-Proofpoint-GUID: wWRa8NjmVQz7rjSmhGEpnXTj2gU7ZCQ1
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIxMDA1MSBTYWx0ZWRfX9o1gzta3SfCB
 rR/W2sAnB8wx+7Ty623VF5ULDrR/UNMpdCN6JB+evJUuler9aH4ce51FlGsnZNHKCZsEIdxz9Gm
 qn8jlJE/qEwIUF59ND6CjggdG6U5fCo=
X-Authority-Analysis: v=2.4 cv=R7aWitRX c=1 sm=1 tr=0 ts=6ad8b79a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8 a=DWtyPYmOaO5ShKUgkzEA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIxMDA1MSBTYWx0ZWRfXyLJd1dQzg2PK
 eU7obpFrsdmGX/BQsDCe5tykJRKsl5kxTx2rM6FUUm3soj7N8yz/CHXpusCQg4TwYfLh0BIAL66
 4/I0QOR/Gr4hCnJXh7HxhuKzgEVhHU7wGSpKv7kR0n0NVLaDSUaZGrVdHfWxisrhmPqRDSsGMs4
 i+wG9sgemxf/VkkGmvCviLV8HL5zP+t/h1FtaAtV/4FDUtDSjCrojFZRGjitnZLEQ4wW++Hb1Zz
 rxdkka5U3+clg7rtXkYQbNjxFxZZXw60lySKmGQMtSMxq64khUugHIKLueEWvwwdHVnQB1U7XBA
 5VUNDnCY24rRVJ8wM+faOO5LPHw+3tdURLT9e3+Wn3e2TMst0mx92LSVUvIjNSPWAKfo7n63bUW
 0L8BzL0WmkwRlcfRLhTMhr3fjgPNrqPkabnrFMur6CpMJHxmsd5PCsU/iXORFZQxz72jsdvLsES
 m8f8qw4mGqhhNR6KZGg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-21_03,2026-10-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 impostorscore=0 bulkscore=0 spamscore=0 suspectscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610210051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_060115_280834_A2CCDDB7 
X-CRM114-Status: GOOD (  26.80  )
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
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gV2VkLCBPY3QgMjEsIDIwMjYgYXQgMToyNOKAr1BNIEhhbmd4aWFuZyBNYQo8aGFuZ3hpYW5n
Lm1hQG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOgo+Cj4gT24gMTAvMjEvMjAyNiA0OjUzIFBNLCBC
cnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+ID4gT24gMjEvMTAvMjAyNiAwODozNywgV2VubWVuZyBM
aXUgd3JvdGU6Cj4gPj4KPiA+PiBIaSBCcnlhbiwgSGFuZ3hpYW5nLAo+ID4+Cj4gPj4gT24gMTAv
MTIvMjAyNiAyOjQ1IFBNLCBIYW5neGlhbmcgTWEgd3JvdGU6Cj4gPj4+IE9uIHN0cmVhbS1vbiwg
Q0FNU1Mgc3RhcnRzIHRoZSBzdWJkZXZpY2VzIHVwc3RyZWFtIGZyb20gdGhlIHZpZGVvIG5vZGUK
PiA+Pj4gdGhyb3VnaCB0aGVpciBzaW5rIHBhZHMsIHNvIHRoZSBWRkUgaXMgc3RhcnRlZCBiZWZv
cmUgdGhlIENTSUQuCj4gPj4+Cj4gPj4+IFN0YXJ0aW5nIHdpdGggQ1NJRCA2ODAsIHRoZSBSRUdf
VVBEQVRFIGlzIGlzc3VlZCB0aHJvdWdoIHRoZSBDU0lECj4gPj4+IHJhdGhlciB0aGFuIHRoZSBW
RkUuIEhvd2V2ZXIsIHZmZV9lbmFibGVfb3V0cHV0X3YyKCkgc3RpbGwgaXNzdWVzIGEKPiA+Pj4g
UkVHX1VQREFURSBhZnRlciBxdWV1ZWluZyBlYWNoIGluaXRpYWwgYnVmZmVyLCBiZWZvcmUgdGhl
IENTSUQgaGFzCj4gPj4+IGNvbmZpZ3VyZWQgdGhlIHN0cmVhbS4gVGhlIFZGRSB0aGVuIG5ldmVy
IHNpZ25hbHMgQlVGX0RPTkUuIFRoZXJlZm9yZSwKPiA+Pj4gdGhlIENBTVNTIG5vdyBpc3N1ZXMg
dGhlIFJFR19VUERBVEUgZnJvbSBjb25maWd1cmVfc3RyZWFtKCkgb24gQ1NJRCA2ODAKPiA+Pj4g
YW5kIENTSUQgR2VuMyBpbnN0ZWFkLiBUaGUgb3BlcmF0aW9uIGhhcHBlbnMgYWZ0ZXIgdGhlIFJY
IGNvbmZpZ3VyYXRpb24KPiA+Pj4gYW5kIGJlZm9yZSB0aGUgUkRJIHBhdGggaXMgZW5hYmxlZC4K
PiA+Pj4KPiA+Pj4gU2tpcCB0aGUgVkZFLXNpZGUgc3RyZWFtLW9uIFJFR19VUERBVEUgb25seSB3
aGVuIHRoZSBDU0lEIGNvbm5lY3RlZCB0bwo+ID4+PiB0aGUgVkZFIHNpbmsgcGFkIGltcGxlbWVu
dHMgdGhlIHJlZ191cGRhdGUgY2FsbGJhY2suIFBsYXRmb3JtcyB3aG9zZQo+ID4+PiBDU0lEIGRv
ZXMgbm90IHByb3ZpZGUgdGhpcyBjYWxsYmFjaywgYXMgd2VsbCBhcyBsaW5lcyBmZWQgYnkgSVNQ
SUYsCj4gPj4+IGtlZXAgdGhlIGV4aXN0aW5nIFZGRS1zaWRlIFJFR19VUERBVEUuCj4gPj4+Cj4g
Pj4+IFNpZ25lZC1vZmYtYnk6IEhhbmd4aWFuZyBNYSA8aGFuZ3hpYW5nLm1hQG9zcy5xdWFsY29t
bS5jb20+Cj4gPj4+IC0tLQo+ID4+PiAgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1z
cy9jYW1zcy1jc2lkLTY4MC5jIHwgIDMgKysKPiA+Pj4gICAuLi4vbWVkaWEvcGxhdGZvcm0vcWNv
bS9jYW1zcy9jYW1zcy1jc2lkLWdlbjMuYyAgICB8ICAzICsrCj4gPj4+ICAgZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLXZmZS5jICAgICAgfCAzNyArKysrKysrKysrKwo+
ID4+PiArICsrKysrKysrKy0KPiA+Pj4gICAzIGZpbGVzIGNoYW5nZWQsIDQyIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKPiA+Pj4KPiA+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lkLTY4MC5jIGIvCj4gPj4+IGRyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lkLTY4MC5jCj4gPj4+IGluZGV4IDM0NWE2
N2M4ZmI5NC4uNTU2Y2RmZWY2MjA3IDEwMDY0NAo+ID4+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC02ODAuYwo+ID4+PiArKysgYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC02ODAuYwo+ID4+PiBAQCAtMjk2LDYg
KzI5Niw4IEBAIHN0YXRpYyB2b2lkIF9fY3NpZF9jb25maWd1cmVfcmRpX3N0cmVhbShzdHJ1Y3QK
PiA+Pj4gY3NpZF9kZXZpY2UgKmNzaWQsIHU4IGVuYWJsZSwgdTgKPiA+Pj4gICAgICAgd3JpdGVs
KHZhbCwgY3NpZC0+YmFzZSArIENTSURfUkRJX0NGRzAocG9ydCkpOwo+ID4+PiAgIH0KPiA+Pj4g
K3N0YXRpYyB2b2lkIGNzaWRfc3ViZGV2X3JlZ191cGRhdGUoc3RydWN0IGNzaWRfZGV2aWNlICpj
c2lkLCBpbnQKPiA+Pj4gcG9ydF9pZCwgYm9vbCBpc19jbGVhcik7Cj4gPj4+ICsKPiA+Pj4gICBz
dGF0aWMgdm9pZCBjc2lkX2NvbmZpZ3VyZV9zdHJlYW0oc3RydWN0IGNzaWRfZGV2aWNlICpjc2lk
LCB1OCBlbmFibGUpCj4gPj4+ICAgewo+ID4+PiAgICAgICBpbnQgaTsKPiA+Pj4gQEAgLTMwNyw2
ICszMDksNyBAQCBzdGF0aWMgdm9pZCBjc2lkX2NvbmZpZ3VyZV9zdHJlYW0oc3RydWN0Cj4gPj4+
IGNzaWRfZGV2aWNlICpjc2lkLCB1OCBlbmFibGUpCj4gPj4+ICAgICAgICAgICBpZiAoY3NpZC0+
cGh5LmVuX3ZjICYgQklUKGkpKSB7Cj4gPj4+ICAgICAgICAgICAgICAgX19jc2lkX2NvbmZpZ3Vy
ZV9yZGlfc3RyZWFtKGNzaWQsIGVuYWJsZSwgaSwgMCk7Cj4gPj4+ICAgICAgICAgICAgICAgX19j
c2lkX2NvbmZpZ3VyZV9yeChjc2lkLCAmY3NpZC0+cGh5LCAwKTsKPiA+Pj4gKyAgICAgICAgICAg
IGNzaWRfc3ViZGV2X3JlZ191cGRhdGUoY3NpZCwgaSwgZmFsc2UpOwo+ID4+PiAgICAgICAgICAg
ICAgIF9fY3NpZF9jdHJsX3JkaShjc2lkLCBlbmFibGUsIGkpOwo+ID4+PiAgICAgICAgICAgfQo+
ID4+PiAgICAgICB9Cj4gPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fj
b20vY2Ftc3MvY2Ftc3MtY3NpZC1nZW4zLmMgYi8KPiA+Pj4gZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9xY29tL2NhbXNzL2NhbXNzLWNzaWQtZ2VuMy5jCj4gPj4+IGluZGV4IDBmZGJmNzVmYjI3ZC4u
ODMwYzljODE4ZDNkIDEwMDY0NAo+ID4+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fj
b20vY2Ftc3MvY2Ftc3MtY3NpZC1nZW4zLmMKPiA+Pj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9xY29tL2NhbXNzL2NhbXNzLWNzaWQtZ2VuMy5jCj4gPj4+IEBAIC0yMTksNiArMjE5LDgg
QEAgc3RhdGljIHZvaWQgX19jc2lkX2NvbmZpZ3VyZV9yZGlfc3RyZWFtKHN0cnVjdAo+ID4+PiBj
c2lkX2RldmljZSAqY3NpZCwgdTggZW5hYmxlLCB1OAo+ID4+PiAgICAgICB3cml0ZWwodmFsLCBj
c2lkLT5iYXNlICsgQ1NJRF9SRElfQ0ZHMChwb3J0KSk7Cj4gPj4+ICAgfQo+ID4+PiArc3RhdGlj
IHZvaWQgY3NpZF9zdWJkZXZfcmVnX3VwZGF0ZShzdHJ1Y3QgY3NpZF9kZXZpY2UgKmNzaWQsIGlu
dAo+ID4+PiBwb3J0X2lkLCBib29sIGlzX2NsZWFyKTsKPiA+Pj4gKwo+ID4+PiAgIHN0YXRpYyB2
b2lkIGNzaWRfY29uZmlndXJlX3N0cmVhbShzdHJ1Y3QgY3NpZF9kZXZpY2UgKmNzaWQsIHU4IGVu
YWJsZSkKPiA+Pj4gICB7Cj4gPj4+ICAgICAgIHU4IGk7Cj4gPj4+IEBAIC0yMzAsNiArMjMyLDcg
QEAgc3RhdGljIHZvaWQgY3NpZF9jb25maWd1cmVfc3RyZWFtKHN0cnVjdAo+ID4+PiBjc2lkX2Rl
dmljZSAqY3NpZCwgdTggZW5hYmxlKQo+ID4+PiAgICAgICAgICAgaWYgKGNzaWQtPnBoeS5lbl92
YyAmIEJJVChpKSkgewo+ID4+PiAgICAgICAgICAgICAgIF9fY3NpZF9jb25maWd1cmVfcmRpX3N0
cmVhbShjc2lkLCBlbmFibGUsIGksIDApOwo+ID4+PiAgICAgICAgICAgICAgIF9fY3NpZF9jb25m
aWd1cmVfcngoY3NpZCwgJmNzaWQtPnBoeSwgMCk7Cj4gPj4+ICsgICAgICAgICAgICBjc2lkX3N1
YmRldl9yZWdfdXBkYXRlKGNzaWQsIGksIGZhbHNlKTsKPiA+Pj4gICAgICAgICAgICAgICBfX2Nz
aWRfY3RybF9yZGkoY3NpZCwgZW5hYmxlLCBpKTsKPiA+Pj4gICAgICAgICAgIH0KPiA+Pj4gICB9
Cj4gPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ft
c3MtdmZlLmMgYi9kcml2ZXJzLwo+ID4+PiBtZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNz
LXZmZS5jCj4gPj4+IGluZGV4IDI2ODBhOTkxNDc2NS4uMTZhMGI1NjYzZmUyIDEwMDY0NAo+ID4+
PiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdmZlLmMKPiA+
Pj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLXZmZS5jCj4g
Pj4+IEBAIC01MDIsNiArNTAyLDM3IEBAIHZvaWQgdmZlX2J1Zl9kb25lKHN0cnVjdCB2ZmVfZGV2
aWNlICp2ZmUsIGludCB3bSkKPiA+Pj4gICAgICAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmdmZl
LT5vdXRwdXRfbG9jaywgZmxhZ3MpOwo+ID4+PiAgIH0KPiA+Pj4gKy8qCj4gPj4+ICsgKiB2ZmVf
dXBzdHJlYW1fY3NpZF9oYXNfcmVnX3VwZGF0ZSAtIENoZWNrIHdoZXRoZXIgdGhlIENTSUQgZmVl
ZGluZwo+ID4+PiB0aGlzIGxpbmUKPiA+Pj4gKyAqIGlzc3VlcyBpdHMgb3duIHN0cmVhbW9uIFJV
UCAoaS5lLiBpdHMgY29uZmlndXJlX3N0cmVhbSBkb2VzIHRoZQo+ID4+PiBSVVApLgo+ID4+PiAr
ICoKPiA+Pj4gKyAqIFRoZSBDU0lELT5WRkUgbGluayBpcyBjcmVhdGVkIGluIGNhbXNzLmMgZm9y
IGFsbCBDU0lEcyBhbmQgVkZFcywKPiA+Pj4gc28gdGhlCj4gPj4+ICsgKiB1cHN0cmVhbSBlbnRp
dHkgb2YgdGhlIHNpbmsgcGFkIGlzIGVpdGhlciBhIENTSUQgKHBvc3NpYmx5IHdpdGgKPiA+Pj4g
UlVQKSBvciBhbgo+ID4+PiArICogSVNQSUYgKG5vIFJVUCkuIE9ubHkgZW5hYmxlZCBsaW5rcyBh
cmUgY29uc2lkZXJlZC4KPiA+Pj4gKyAqLwo+ID4+PiArc3RhdGljIGJvb2wgdmZlX3Vwc3RyZWFt
X2NzaWRfaGFzX3JlZ191cGRhdGUoc3RydWN0IHZmZV9saW5lICpsaW5lKQo+ID4+PiArewo+ID4+
PiArICAgIHN0cnVjdCB2ZmVfZGV2aWNlICp2ZmUgPSB0b192ZmUobGluZSk7Cj4gPj4+ICsgICAg
c3RydWN0IGNhbXNzICpjYW1zcyA9IHZmZS0+Y2Ftc3M7Cj4gPj4+ICsgICAgc3RydWN0IG1lZGlh
X3BhZCAqcmVtb3RlOwo+ID4+PiArICAgIHVuc2lnbmVkIGludCBpOwo+ID4+PiArCj4gPj4+ICsg
ICAgcmVtb3RlID0gbWVkaWFfcGFkX3JlbW90ZV9wYWRfZmlyc3QoJmxpbmUtPnBhZHNbTVNNX1ZG
RV9QQURfU0lOS10pOwo+ID4+PiArICAgIGlmICghcmVtb3RlIHx8ICFpc19tZWRpYV9lbnRpdHlf
djRsMl9zdWJkZXYocmVtb3RlLT5lbnRpdHkpKQo+ID4+PiArICAgICAgICByZXR1cm4gZmFsc2U7
Cj4gPj4+ICsKPiA+Pj4gKyAgICBmb3IgKGkgPSAwOyBpIDwgY2Ftc3MtPnJlcy0+Y3NpZF9udW07
IGkrKykgewo+ID4+PiArICAgICAgICBzdHJ1Y3QgY3NpZF9kZXZpY2UgKmNzaWQgPSAmY2Ftc3Mt
PmNzaWRbaV07Cj4gPj4+ICsKPiA+Pj4gKyAgICAgICAgaWYgKCZjc2lkLT5zdWJkZXYuZW50aXR5
ICE9IHJlbW90ZS0+ZW50aXR5KQo+ID4+PiArICAgICAgICAgICAgY29udGludWU7Cj4gPj4+ICsK
PiA+Pj4gKyAgICAgICAgcmV0dXJuICEhY3NpZC0+cmVzLT5od19vcHMtPnJlZ191cGRhdGU7Cj4g
Pj4+ICsgICAgfQo+ID4+PiArCj4gPj4+ICsgICAgcmV0dXJuIGZhbHNlOwo+ID4+PiArfQo+ID4+
PiArCj4gPj4+ICAgaW50IHZmZV9lbmFibGVfb3V0cHV0X3YyKHN0cnVjdCB2ZmVfbGluZSAqbGlu
ZSkKPiA+Pj4gICB7Cj4gPj4+ICAgICAgIHN0cnVjdCB2ZmVfZGV2aWNlICp2ZmUgPSB0b192ZmUo
bGluZSk7Cj4gPj4+IEBAIC01MTEsNiArNTQyLDcgQEAgaW50IHZmZV9lbmFibGVfb3V0cHV0X3Yy
KHN0cnVjdCB2ZmVfbGluZSAqbGluZSkKPiA+Pj4gICAgICAgdW5zaWduZWQgbG9uZyBmbGFnczsK
PiA+Pj4gICAgICAgdW5zaWduZWQgaW50IGZyYW1lX3NraXAgPSAwOwo+ID4+PiAgICAgICB1bnNp
Z25lZCBpbnQgaTsKPiA+Pj4gKyAgICBib29sIHJ1cF9pbl9jc2lkOwo+ID4+PiAgICAgICBzZW5z
b3JfcGFkID0gY2Ftc3NfZmluZF9zZW5zb3JfcGFkKCZsaW5lLT5zdWJkZXYuZW50aXR5KTsKPiA+
Pj4gICAgICAgaWYgKHNlbnNvcl9wYWQpIHsKPiA+Pj4gQEAgLTUyMyw2ICs1NTUsOCBAQCBpbnQg
dmZlX2VuYWJsZV9vdXRwdXRfdjIoc3RydWN0IHZmZV9saW5lICpsaW5lKQo+ID4+PiAgICAgICAg
ICAgICAgIGZyYW1lX3NraXAgPSBWRkVfRlJBTUVfRFJPUF9WQUwgLSAxOwo+ID4+PiAgICAgICB9
Cj4gPj4+ICsgICAgcnVwX2luX2NzaWQgPSB2ZmVfdXBzdHJlYW1fY3NpZF9oYXNfcmVnX3VwZGF0
ZShsaW5lKTsKPiA+Pj4gKwo+ID4+PiAgICAgICBzcGluX2xvY2tfaXJxc2F2ZSgmdmZlLT5vdXRw
dXRfbG9jaywgZmxhZ3MpOwo+ID4+PiAgICAgICBvcHMtPnJlZ191cGRhdGVfY2xlYXIodmZlLCBs
aW5lLT5pZCk7Cj4gPj4+IEBAIC01NTIsNyArNTg2LDggQEAgaW50IHZmZV9lbmFibGVfb3V0cHV0
X3YyKHN0cnVjdCB2ZmVfbGluZSAqbGluZSkKPiA+Pj4gICAgICAgICAgIG91dHB1dC0+Z2VuMi5h
Y3RpdmVfbnVtKys7Cj4gPj4+ICAgICAgICAgICBvcHMtPnZmZV93bV91cGRhdGUodmZlLCBvdXRw
dXQtPndtX2lkeFswXSwKPiA+Pj4gICAgICAgICAgICAgICAgICAgICAgb3V0cHV0LT5idWZbaV0t
PmFkZHJbMF0sIGxpbmUpOwo+ID4+PiAtICAgICAgICBvcHMtPnJlZ191cGRhdGUodmZlLCBsaW5l
LT5pZCk7Cj4gPj4+ICsgICAgICAgIGlmICghcnVwX2luX2NzaWQpCj4gPj4+ICsgICAgICAgICAg
ICBvcHMtPnJlZ191cGRhdGUodmZlLCBsaW5lLT5pZCk7Cj4gPj4+ICAgICAgIH0KPiA+Pj4gICAg
ICAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmdmZlLT5vdXRwdXRfbG9jaywgZmxhZ3MpOwo+ID4+
Pgo+ID4+Cj4gPj4gQWNjb3JkaW5nIHRvIHRoZSBoYXJkd2FyZSBkb2N1bWVudGF0aW9uOgo+ID4+
IFN0YXJ0aW5nIHdpdGggQ1NJRCA2ODAsIENBTUlGIGhhcyBtb3ZlZCBpbnRvIHRoZSBDU0lELiBB
cyBhIHJlc3VsdCwKPiA+PiBSVVAgaXMgbm93IGlzc3VlZCBieSB0aGUgQ1NJRCBhbmQgcHJvcGFn
YXRlZCB0byB0aGUgSUZFLgo+ID4+Cj4gPj4gU3RhcnRpbmcgd2l0aCBDU0lEIDk4MCwgc29mdHdh
cmUgbXVzdCBhbHNvIHNldCB0aGUgU0VUIGJpdCBpbgo+ID4+IFJVUF9BVVBfQ01EIGFmdGVyIGlz
c3VpbmcgdGhlIFJVUC9BVVAgY29tbWFuZC4gT3RoZXJ3aXNlLCB0aGUgaGFyZHdhcmUKPiA+PiBp
Z25vcmVzIHRoZSBjb21tYW5kIGFuZCB0aGUgY29ycmVzcG9uZGluZyByZWdpc3RlciB1cGRhdGUg
ZG9lcyBub3QKPiA+PiB0YWtlIGVmZmVjdC4KPiA+Pgo+ID4+Cj4gPj4gQnJ5YW4sIGFjY29yZGlu
ZyB0byB0aGUgSFcgZG9jdW1lbnRhdGlvbiwgdGhlIGNoYW5nZSBpdHNlbGYgaXMKPiA+PiBjb25z
aXN0ZW50IHdpdGggdGhlIHJlcXVpcmVkIHByb2dyYW1taW5nIHNlcXVlbmNlLiBUaGUgbWFpbiBx
dWVzdGlvbgo+ID4+IGlzIHdoZXRoZXIgdGhpcyBpcyB0aGUgcmlnaHQgaW1wbGVtZW50YXRpb24g
ZnJvbSB0aGUgZHJpdmVyCj4gPj4gcGVyc3BlY3RpdmUsIG9yIGlmIHRoZXJlIGlzIGEgY2xlYW5l
ciB3YXkgdG8gaGFuZGxlIGl0Lgo+ID4+Cj4gPj4gSSBoYXZlIHRlc3RlZCB0aGUgY2hhbmdlIG9u
IHRoZSBIYW1vYSBFVksgYm9hcmQuCj4gPj4gVGVzdGVkLWJ5OiBXZW5tZW5nIExpdSA8d2VubWVu
Zy5saXVAb3NzLnF1YWxjb21tLmNvbT4gIyBIYW1vYSBFVksKPiA+Pgo+ID4+Cj4gPj4gVGhhbmtz
LAo+ID4+IFdlbm1lbmcKPiA+Cj4gPiBPSyB0aGFuayB5b3UgZm9yIHRoZSBleHBsYW5hdGlvbi4K
PiA+Cj4gPiBPVE9IIEkgYWdyZWUgd2l0aCBMb2ljJ3Mgc3RhdGVtZW50IC0gaXQgaXMgY2xlYW5l
ciB0byBzdWJ0cmFjdCB0aGUKPiA+IGNhbGxiYWNrIGFuZCBkaXNqdW5jdCBvbiBpdHMgcHJlc2Vu
Y2UgdGhhbiB0byBhZGQgYSBmbGFnIHRvIHRoZSBzYW1lCj4gPiBlZmZlY3QgaW4gcmV2ZXJzZS4K
PiA+Cj4gPiAtLS0KPiA+IGJvZAo+Cj4gSGkgTG9pYywgQnJ5YW4sIHRoYW5rcyBmb3IgdGhlIHJl
dmlldy4gSSB3b25kZXIgaWYgaXQgd291bGQgYmUgYmV0dGVyIHRvCj4ga2VlcCB0aGUgY2hlY2sg
b24gdGhlIENTSUQgc2lkZT8KPgo+IHZmZS0+cmVnX3VwZGF0ZSgpIGlzIGFsc28gdXNlZCBvdXRz
aWRlIHN0cmVhbS1vbiwgc3VjaCBhcyBidWZkb25lLCBxdWV1ZQo+IGJ1ZmZlci4gSXQgbXVzdCBi
ZSBpbXBsZW1lbnRlZCBpbiBWRkUuIFdlIG9ubHkgd2FudCB0byBjaGFuZ2UgdGhlIFZGRQo+IGJl
aGF2aW9yIGF0IHN0cmVhbS1vbiBzdGFnZSwgaW4gZnVuY3Rpb24gdmZlX2VuYWJsZV9vdXRwdXRf
djIoKS4gU28KPiBtYWtpbmcgdmZlLT5yZWdfdXBkYXRlKCkgb3B0aW9uYWwgY291bGQgYWZmZWN0
IHJ1bnRpbWUgdXBkYXRlcy4KCkJ1dCB0aGUgcGF0Y2ggc2F5czoKJ1RoZSBSRUdfVVBEQVRFIGlz
IGlzc3VlZCB0aHJvdWdoIHRoZSBDU0lEIHJhdGhlciB0aGFuIHRoZSBWRkUnCgpTbyB5b3UgbWVh
biBpdCdzIG5vdCBhbHdheXMgZHJpdmVuIGJ5IENTSUQ/CgpBbHNvLCB0b2RheSB3ZSBwZXJmb3Jt
IGEgcmVnX3VwZGF0ZSBhZnRlciBxdWV1aW5nIGEgYnVmZmVyIChpLmUuIGFmdGVyCnByb2dyYW1t
aW5nIEFERFIpLiBIb3dldmVyLCBhcyBmYXIgYXMgSSBrbm93LCB0aGlzIGlzIG5vIGxvbmdlcgpu
ZWNlc3NhcnkgaW4gcmVjZW50IFZGRS9URkUvSUZFIGdlbmVyYXRpb25zLiBJbiB0aG9zZSBpbXBs
ZW1lbnRhdGlvbnMsCnRoZSBBRERSIHJlZ2lzdGVyIGlzIG5vdCBkb3VibGUtYnVmZmVyZWQgYW5k
IGlzIG5vdCBwYXJ0IG9mIHRoZQpyZWctdXBkYXRlIHNldC4gSW5zdGVhZCwgaXQgYmVoYXZlcyBh
cyBhIEZJRk8gZW50cnksIHNvIGlzc3VpbmcgYQpyZWdfdXBkYXRlIG9ubHkgcmVzdWx0cyBpbiBh
IHVzZWxlc3MgUlVQX0RPTkUgaW50ZXJydXB0LgoKPgo+IE1heWJlIHRoZSBjaGVhcGVzdCB3YXkg
aXMgc3RpbGwgdG8gY2hlY2sgdGhlIENTSUQgc2lkZSByZWdfdXBkYXRlCj4gaW1wbGVtZW50YXRp
b24gYXQgc3RyZWFtLW9uIHN0YWdlPyBJJ20gdmVyeSBnbGFkIHRvIGhlYXIgeW91cgo+IHN1Z2dl
c3Rpb25zLiBUaGFua3MgYSBsb3QuCj4KPiAtLS0KPiBCZXN0IFJlZ2FyZHMsCj4gSGFuZ3hpYW5n
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
