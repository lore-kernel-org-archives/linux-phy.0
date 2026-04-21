Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E395F5A8BA
	for <linux-phy@archiver.kernel.org>; Tue, 21 Apr 2026 02:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ivF/vLVFb00j0Bz3xgle5QFjAlQyQMBDz5ufVe+nEGw=; b=x3Rki5J/gKulM/
	usf+AaopcmA4Zk8buKF1/oJPg5lw9rPxA6/kv6jhW8fYiAWfoC1LoDWdPvwyGxssXL/ohK4kQEVin
	v4Xsuemmj0PY4X2UpIBGQeFslhlTyMorloiJM3gQoc8yAdLz3miOY6zN8lcFETuQYWA66KAEzZ8Qr
	ngTWIayRXoOjfPATy7FFSzyPIVnNUNNOSJY5qQko2N5GEsE73aIAtfhqNQw+BHkgntx91gq+GlHef
	0r2+r9sypaB/qUCx0ezFcs++HJJS2IMsGjLutSX996f0g7G6DowxjkWP+05DsDJ2b0LEenfKmvJKr
	OKK+z6GDJ6tJsbxL5aHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF0v4-00000007wGQ-2xUI;
	Tue, 21 Apr 2026 02:32:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF0v2-00000007wG5-2Pfr
	for linux-phy@lists.infradead.org;
	Tue, 21 Apr 2026 02:32:57 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63KJOUNp1014304
	for <linux-phy@lists.infradead.org>; Tue, 21 Apr 2026 02:32:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nKh8R1Dg3Npq11SavjJUrVg6TTb0obZ2ojFct6wX6QY=; b=Hp4o7VP32GlrV1Uy
	wwXYsV4dwoiQepF2QGXbb7CUVNLwwY15E19qeh1muUzcwkGzfUpnHLkNGKBb57FL
	/cCBO5E6gYLK+kN3ASl5+HfsWZcBNRvjbkF8WsQWGa5yxEM6dnsDsbWO5SCakG+1
	iADWnSNxlU2piJLhCt4QaCcn4BnINtVyIJRYyj8c0okSkKAuNwQLBTOSXDaa6ln4
	CR9PKKE6Buw2CGUl0UK7S9gzwxqgWIBnd6ko3bbW7GKJO0klS4A5PhXquPqQUwZ5
	Clftxm5Vojfhn3xDBsSgaT11kiGNWvjaSJ/lCPgho2kfZ6zfI/pqUPfwi5ZLcSbe
	Npl89A==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dnt90123d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Apr 2026 02:32:55 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2b242062308so68755515ad.2
        for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 19:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776738774; x=1777343574; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nKh8R1Dg3Npq11SavjJUrVg6TTb0obZ2ojFct6wX6QY=;
        b=SfmsSJFMwl83r2JqfahXH0eCcWMzk10psar/gRHtnLJNz2BsWH2LXHwNSMMTqkX1mr
         n4XdVaVYe7fkWqzlkuKzcAb4NQlGf4ex6IqSXzGPoRB/tVqYGiOUTn8iIGLEJbBI/Vj2
         R7nDnz9zkZqqcFZzxuL+sUPnAgWyhhe/EtqE0xbDp/LcFATtc9FPHR/ExPiH1GP0iPgV
         ncA8XJ9qpd7ZhHsh3XOM6+vLF5HMyz7UhNi0vNzOLg0g0KdVcj7H54MUrXf1jJ37foXP
         vklS2UkdkmnEhptlt0Dna+e4tiONqV622StdIo9bValhArwLW/9tvJJBV5/oQ+r4xjyG
         HB8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776738774; x=1777343574;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nKh8R1Dg3Npq11SavjJUrVg6TTb0obZ2ojFct6wX6QY=;
        b=lu7CSMySPqHnKrL3cS+6RFVcTPvXD5ma+f6h6MDR5FygPtlh/Seln3kOXRR5SrcLvE
         0ZMjjvC3Iz7cD5Clz6rIr/DC9J9DQGlWfDzlBLo34NSxsrcm4lIyy+aLHOx2vylMQ+eO
         3OIdAAFnOTmTBp2/ofTXY0gAG5DsAVk3GLIJ0wNIkf4j7XUbNlqpgXGNZl+6zONtDbLK
         vPekfiKdkpOnY81JvwskaqDSkzJ/tcarZAAofZ/LKgnZPacb+imMpn3K/jMPZQaf9HdO
         t36Ri1qhXrhG3NTh6yGjwhZ7pVZRhsQph6IlJusBIfqClB2sRzBGX9+wGXl9OKaFy2qY
         uOug==
X-Forwarded-Encrypted: i=1; AFNElJ8VJ7FHHnoGx5EvpR39+DUHG9vpXVifFLR99fwvi8YTErO+fKjp00EbfmEDryc1fh7BZoY6szMabI8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/kmJnIrjlZogol4wkKNZX2O+O7iDCP8vx3541vzS0iVHyGzKs
	6nh7APVXz3iIO9aM4nB65rBs2Qs1cRurfX73zjadntZjDhHDDlN0DmcGp6SzkEjddDyav4aW+yw
	YeLXKE14zwTlBqKMOTxPpihSYqHo4E0yiRzCOmtIz5UWrhUqazLYuVMGsmuNXhO2ekYKY
X-Gm-Gg: AeBDieut9F7xw/mJxVoisWUwUSFZamvy8NNRHrRBHT8S1tzhDpvf6qU49jH3JO/1H7D
	nmQDcW8mqrB3MbkPVan3BUvKkChBpxbUfxgY1oyC4uFJKDSJDT8qtf+4RiuK0cxEygBKhSEC+dR
	FyeFsRQA4Ghl50Miy8rOr1VHjnVo1XSGzWvC1pLO3ImhJHBbP7RJFehVk3TFhKYfuYGRKDc8qyZ
	fNYYl9K5K5TvbbBejY4l9OF+26f2xE99g9fa+45XVIbefcIxzkVj5MNgAFUxkjKEOa+wl6A7L2o
	B/SF0EuBuwGLksO6a5PrSVlwuj371o0ZSvRwReYDQDp4MmyLUwG0vYexXCamcaRrh8ErH0h2Ltr
	KHDK/q52zp3Opi6ZJORmKEA2+CTpAsjhNgqgNvH6o/zy1hcBHEUg4xqDTJhwVCgyNAW15sBBqO2
	z7AftkJvLYiAmadej+0KhCMhJrc4FQ
X-Received: by 2002:a17:903:1d2:b0:2b2:41a9:8e10 with SMTP id d9443c01a7336-2b5f9f4e110mr172976605ad.23.1776738774350;
        Mon, 20 Apr 2026 19:32:54 -0700 (PDT)
X-Received: by 2002:a17:903:1d2:b0:2b2:41a9:8e10 with SMTP id d9443c01a7336-2b5f9f4e110mr172976255ad.23.1776738773895;
        Mon, 20 Apr 2026 19:32:53 -0700 (PDT)
Received: from [10.133.33.141] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b5fab2114bsm112678515ad.60.2026.04.20.19.32.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2026 19:32:53 -0700 (PDT)
Message-ID: <f27b39fc-a6c5-4450-93bc-babb7d6dd9a5@oss.qualcomm.com>
Date: Tue, 21 Apr 2026 10:32:49 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] phy: qcom: edp: Add eDP/DP mode switch support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
References: <20260302-edp_phy-v3-0-ca8888d793b0@oss.qualcomm.com>
 <20260302-edp_phy-v3-1-ca8888d793b0@oss.qualcomm.com>
 <islxoe4wbqx5pl54difetdcl5lrqvfd5ysbaicxz5lv235sfmd@6hwrq3rmqx7c>
 <fffa03f6-82c5-4d87-9a41-19e6f82ec39b@oss.qualcomm.com>
 <vywmtt6p3itkrbnucahzvsh6hpwqbno7al5h5zrqdcf3cejyto@pr4of7o3zdeo>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <vywmtt6p3itkrbnucahzvsh6hpwqbno7al5h5zrqdcf3cejyto@pr4of7o3zdeo>
X-Authority-Analysis: v=2.4 cv=KfbidwYD c=1 sm=1 tr=0 ts=69e6e1d7 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=PxGw4gJgEL4GvZwk1AwA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: W5W03ALSrDZAeBr5Z-yTqQ6rrqEZ74Jy
X-Proofpoint-GUID: W5W03ALSrDZAeBr5Z-yTqQ6rrqEZ74Jy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIxMDAyMiBTYWx0ZWRfX8zS7YP9OOjF9
 veFRurGxjMFpRID7xPMnfDboc16cX3xKOx2NrMtWtbCiOYGdMy5qVw0efeyCE6b6bbkCqt/e77f
 UShjbe7D3pVfWekmkhR428bviwCFjFPhgUrWFYEPlSYYB63KPxI1aQ5bNl+yBKNjpPLY/V3f4Vi
 hAwWYoHvJPsnFaK0UzNmn5lysaFhsLpEydZSX3ZmLotC6856NJ1LuG2tQZAPDnxphJbMeZSOCuj
 CrAMTnJFkLvr9bszcdIpEpnvpa+DxbLkbWoSIlgnuXgX+zGRn2bMGG2pJ1GESzSpKU0xJOkR/qH
 Fhfd5mlxURdBlOgnfgRtZgFhbzx33k1SjY58aZxlZZN6PueQZkySVpH5JG3TGB7oTono/GeGnh1
 7z/63FcyuiXCFGjvHCopNcFabdZFzMwkWZUVBydsJi+1XJE6rejyYO/D3zxxVf+mqhFd4fEzfzV
 Mjo+pMPaL92+sMsVM6g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-20_05,2026-04-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 suspectscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604210022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_193256_628180_250E3F9C 
X-CRM114-Status: GOOD (  24.47  )
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

CgpPbiA0LzIxLzIwMjYgMjozMiBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiBNb24s
IEFwciAyMCwgMjAyNiBhdCAwODo0NzowOVBNICswODAwLCBZb25neGluZyBNb3Ugd3JvdGU6Cj4+
Cj4+Cj4+IE9uIDMvMjAvMjAyNiAyOjM2IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+Pj4g
T24gTW9uLCBNYXIgMDIsIDIwMjYgYXQgMDQ6Mjg6MjlQTSArMDgwMCwgWW9uZ3hpbmcgTW91IHdy
b3RlOgo+Pj4+IFRoZSBlRFAgUEhZIHN1cHBvcnRzIGJvdGggZURQJkRQIG1vZGVzLCBlYWNoIHJl
cXVpcmVzIGEgZGlmZmVyZW50IHRhYmxlLgo+Pj4+IFRoZSBjdXJyZW50IGRyaXZlciBkb2Vzbid0
IGZ1bGx5IHN1cHBvcnQgZXZlcnkgY29tYm8gUEhZIG1vZGUgYW5kIHVzZQo+Pj4+IGVpdGhlciB0
aGUgZURQIG9yIERQIHRhYmxlIHdoZW4gZW5hYmxlIHRoZSBwbGF0Zm9ybS4gSW4gYWRkaXRpb24s
IHNvbWUKPj4+PiBwbGF0Zm9ybXMgbWlzbWF0Y2ggYmV0d2VlbiB0aGUgbW9kZSBhbmQgdGhlIHRh
YmxlIHdoZXJlIERQIG1vZGUgdXNlcwo+Pj4+IHRoZSBlRFAgdGFibGUgb3IgZURQIG1vZGUgdXNl
IHRoZSBEUCB0YWJsZS4KPj4+Pgo+Pj4+IENsZWFuIHVwIGFuZCBjb3JyZWN0IHRoZSB0YWJsZXMg
Zm9yIGN1cnJlbnRseSBzdXBwb3J0ZWQgcGxhdGZvcm1zIGJhc2VkIG9uCj4+Pj4gdGhlIEhQRyBz
cGVjaWZpY2F0aW9uLgo+Pj4+Cj4+Pj4gSGVyZSBsaXN0cyB0aGUgdGFibGVzIGNhbiBiZSByZXVz
ZWQgYWNyb3NzIGN1cnJlbnQgcGxhdGZvcm1zLgo+Pj4+IERQIG1vZGXvvJoKPj4+PiAJLXNhODc3
NXAvc2M3MjgwL3NjODI4MHhwL3gxZTgwMTAwCj4+Pj4gCS1nbHltdXIKPj4+PiBlRFAgbW9kZShs
b3cgdmRpZmYpOgo+Pj4KPj4+IFNlcGFyYXRlIHF1ZXN0aW9uOiBzaG91bGQgd2UgZXh0ZW5kIHBo
eV9jb25maWd1cmVfZHBfb3B0cyB3aXRoIHRoZQo+Pj4gbG93L2hpZ2ggdmRpZmY/IElzIHRoZXJl
IGEgcG9pbnQgaW4gcHJvdmlkaW5nIHRoZSBhYmlsaXR5IHRvIHRvZ2dsZQo+Pj4gYmV0d2VlbiBs
b3cgdmRpZmYgYW5kIGhpZ2ggdmRpZmY/Cj4+Pgo+PiBFbW0gLGkgaGF2ZW4ndCBmb3VuZCBhbnkg
cGxhdGZvcm0gdXNpbmcgaGlnaCB2ZGlmZiBzbyBmYXIsIGFuZCBJJ20gbm90IGNsZWFyCj4+IGlu
IHdoaWNoIGNhc2VzIHN3aXRjaGluZyBiZXR3ZWVuIGxvdyBhbmQgaGlnaCB2ZGlmZiB3b3VsZCBi
ZSBuZWVkZWQuCj4gCj4gIEZyb20gbXkgKG1heWJlIGluY29ycmVjdCkgdW5kZXJzdGFuZGluZyBv
ZiBlRFAgQi4zLCB0aGUgaGlnaCB2cyBsb3cKPiB2ZGlmZiBzZWxlY3Rpb24gc2hvdWxkIGJlIGJh
c2VkIG9uIHRoZSBjYWJsZSBsZW5ndGguCj4gClRoYW5rcyBmb3IgdGhlIGV4cGxhbmF0aW9uLiBN
YXliZSB3ZSBjYW4gYWRkIHRoaXMgd2hlbiB3ZSByZWFsbHkgbmVlZCBpdC4KPj4KPj4+PiAJLWds
eW11ci9zYTg3NzVwL3NjODI4MHhwL3gxZTgwMTAwCj4+Pj4gCS1zYzcyODAKPj4+Cj4+PiBJIHVu
ZGVyc3RhbmQgeW91ciB3aXNoIHRvIHBlcmZvcm0gYWxsIHRoZSBjaGFuZ2VzIGluIGEgc2luZ2xl
IHBhdGNoLCBidXQKPj4+IHRoZXJlIGlzIG9uZSBwcm9ibGVtIHdpdGggdGhhdC4gQ29uc2lkZXIg
dGhpcyBwYXRjaCByZWdyZXNzZXMgb25lIG9mIHRoZQo+Pj4gcGxhdGZvcm1zIChJJ20gbG9va2lu
ZyBhdCBLb2RpYWsgYW5kIFNDODE4MFggYXMgdGhleSBnZXQgdGhlIGJpZ2dlc3Qgc2V0Cj4+PiBv
ZiBjaGFuZ2VzKS4gSXQgd291bGQgYmUgYWxtb3N0IGltcG9zc2libGUgdG8gc2VwYXJhdGUsIHdo
aWNoIHBhcnRpY3VsYXIKPj4+IGNoYW5nZSBjYXVzZWQgdGhlIHJlZ3Jlc3Npb24uIEknZCBzdWdn
ZXN0IHNwbGl0dGluZyB0aGlzIHBhdGNoIGludG8gYQo+Pj4gc2V0IG9mIG1vcmUgYXRvbWljIGNo
YW5nZXMuIEUuZy4gdGhlIEFVWF9DRkc4IGlzIGRlZmluaXRlbHkgYSBzZXBhcmF0ZQo+Pj4gY2hh
bmdlLiBXcml0aW5nIHN3aW5nIC8gcHJlX2VtcGggdGFibGVzIG9uIEtvZGlhayBhbmQgU0M4MTgw
WCBpcyBhCj4+PiBzZXBhcmF0ZSBjaGFuZ2UgKG9yIHR3bykuIFN3aXRjaGluZyBlYWNoIG9mIHRo
ZSBwbGF0Zm9ybXMgdG8gdGhlCj4+PiBjb3JyZWN0ZWQgc2V0IG9mIHRhYmxlcyBpZGVhbGx5IGFs
c28gc2hvdWxkIGNvbWUgYXMgYSBzZXBhcmF0ZSBjaGFuZ2UsCj4+PiBzbyB0aGF0IGluIGNhc2Ug
b2YgYSByZWdyZXNzaW9uIHRoZSBpc3N1ZSB3b3VsZCBiZSBlYXNpZXIgdG8gaWRlbnRpZnkuCj4+
Pgo+PiBUaGFuayBmb3IgcG9pbnQgdGhpcywgd2lsbCBzZXBhcmF0ZSB0aGUgY2hhbmdlLgo+PiBJ
IG1vc3RseSBvdmVybG9va2VkIFNDODE4MFggaGVyZSwgc2luY2UgSSBhc3N1bWVkIGl0IHNoYXJl
cyB0aGUgc2FtZSBQSFkgYXMKPj4gU0M3MjgwLiBIb3dldmVyLCB0aGV5IGFyZSB1c2luZyBkaWZm
ZXJlbnQgUEhZIHN1YuKAkXZlcnNpb25zLiBXaWxsIGFkZCBwcm9wZXIKPj4gc3VwcG9ydCBmb3Ig
aXQgaW4gdGhlIG5leHQgdmVyc2lvbi4KPiAKPiBUaGFua3MhCj4gCkVtbSwgb25lIG1vcmUgcXVl
c3Rpb24uLiBCYXNlZCBvbiBLb25hcmQncyBjb21tZW50cywgc2hvdWxkIEkgc3BsaXQgdGhpcyAK
cGF0Y2gsIGFuZCBzZW5kIGEgbmV3IHJldmlzaW9uLCBvciAgcG9zdCBhIG5ldyBTQzgxODBYIHBh
dGNoIG9uIHRvcCBvZiAKdGhlc2UgdHdvIGV4aXN0aW5nIHBhdGNoZXM/Cj4+Pj4KPj4+PiBDYzog
c3RhYmxlQHZnZXIua2VybmVsLm9yZwo+Pj4+IEZpeGVzOiBmMTk5MjIzY2I0OTAgKCJwaHk6IHFj
b206IEludHJvZHVjZSBuZXcgZURQIFBIWSBkcml2ZXIiKQo+Pj4+IFNpZ25lZC1vZmYtYnk6IFlv
bmd4aW5nIE1vdSA8eW9uZ3hpbmcubW91QG9zcy5xdWFsY29tbS5jb20+Cj4+Pj4gLS0tCj4+Pj4g
ICAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMgfCA5MCArKysrKysrKysrKysr
KysrKysrKysrLS0tLS0tLS0tLS0tLS0tCj4+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDUzIGluc2Vy
dGlvbnMoKyksIDM3IGRlbGV0aW9ucygtKQo+Pj4+Cj4gCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
