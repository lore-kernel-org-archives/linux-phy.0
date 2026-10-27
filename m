Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C395606A31A
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 23:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=fVVdYgE0;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=OhsuEJ1E;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=hQ4TwXAC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=X9Pg1knV+sLhxeucRzx3teAOiVivbel021r4QKJx1pw=; b=fVVdYgE0+7Otc+tIMIUzwiNrDP
	ljstRqghYhij1h8nJjnDGPvZSK0R9XFhds8BKHzwJfDt8IlZPu5Jrm05qbKCj+ayZVt0zIPt+kXcv
	UQMabJ1t3L4WiEXXAwPxHWg5MEw+nK96/xYIdqLrHdFh5uJlvIc2Onjf0wFrrUPA+2URBzcElDnqh
	xI4kre96m9PsMicBkKiDfvWaxls+NAshH12o0qm12OBvMFdGc0da1Wp4T8Dr9C+me34SNcVPY63dP
	F4xSIYh0T0IgLnZAxaUCJJK0kcCs45b3DcOY0JFN/BF/S+Lp1mDSPk7g9lsCbV7k+5iNhnO6mf9xf
	LQRk0Oug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLqry-00000005xDf-3nM7;
	Tue, 27 Oct 2026 23:46:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLqrv-00000005xDD-1vlq
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 23:46:17 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69RKt5eY3822806
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 23:46:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z2UfHBvHRgGayx7r8hZ+HGVeH8gt1wGqjG5tuFe3plk=; b=OhsuEJ1EELNpbET1
	ZDtDr9vJ+Nl7HYv9/qC1dtjz9y1LRtW1aPENhQMw2FwKRFKJhCUM2QRnDS0RPms+
	8L8XB4CobFUaLXFINzyGWCh0j0vwQ+UuJ+WiuQZc9CodO8sRizoqqMsu6UZAGaj4
	A6C8VJi4lfMkEr5vdsj/wZCkft/VUa9u5Qqqnwc8g0kyhJSwEKBLDBHjHQrJqGG9
	D8oM+YdR6BvTNFGAtV746g3UXptIbLH3NTrrf2Tm11dtnN6abTMKQOEhMksLLjuH
	HpU5M78I/ie3Um3TizGz+7kAUpkKL5C1CoMDdlU4kHppTrtJmBhdjjhJ3rlw/CTh
	fKs56A==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hk2qe0mu6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 23:46:11 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-359b81ad4e8so454018eec.0
        for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 16:46:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793144770; x=1793749570; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=z2UfHBvHRgGayx7r8hZ+HGVeH8gt1wGqjG5tuFe3plk=;
        b=hQ4TwXACfDKZ8VqtdUnM0lUGganamlKO3BK+4FT6K1znKQBq3+GPAaEb3wqbN4LLey
         9bXSIAps4IvjEsR5tR4eX4Fj70ln6ePtMoIN71HCtVyE9SFm2ZQZiWXKaS3TSCQr2sLV
         kMURRcDPJMTypHQZrbuA9EgxjH2c1XmX3WP6QFbx+1Aigys8SSwoS2B8RPTkQK36AkCA
         76PJvnM178CyJBo1g26rHRRkWInX229YDLp5psuz7YXHs5HOngaeZccqIk/XQUIb6z3V
         Zgf9Vk1iC2/Ub1Zv/JhS5RUlTHJDKU/yZUyEvTaLale5aRa608nGvq+H4pZvTZI4VqLx
         CzRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793144770; x=1793749570;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=z2UfHBvHRgGayx7r8hZ+HGVeH8gt1wGqjG5tuFe3plk=;
        b=REBjQ1bi2M9lnCh7cM3CwVlP7dFUb5JB4xfRUwE790T1cRJJVEhSlRs4UFtvaSkHGF
         MtHNfEjbTvlj1HAxYB2ipywk+r/yVWn+hWFdHaqvDrpW1zEvC94BjNRx+73BmgjEt/1L
         Vtcf6syOtwfNmwK6F2E+7/0XmWgrbXj/cdeqSQ+8YOFVhpmjZD2L0cwThSZlzutx3Vlo
         uXKr4ptaVbh2+ngK+cREPLsFXNtFdhFmpA0I0SxYSfayDenlomiY1HE0YWoYEN4IaCR4
         NINQGoyY6jexDmMNtnUcMooTvhesWD4GHYJRW1FO7x/9dq34kSK5LOYJm+lPPEVfTRlO
         5bkg==
X-Forwarded-Encrypted: i=1; AKwUvByDnfPy/9zcm5HLtrzCtzW3cFrqRUopS8kge/LaaOB78pz5twhvOifdCeTCJ7Nz5a7BxpMZihUiZcc=@lists.infradead.org
X-Gm-Message-State: AFq9FYLa91nnQ2q0IRSDueamcyqcojFV+7te6JeeMl2JgMHruPFjv2RQ
	f4gJ9R0M3fBVuH9GZbIrTBFULiRbc3akUaZxPLkmBa2PGtni9Yo+BCHxdRJJcB2ybBCdOLvimzE
	DVylhu0bmbmkyO84nzXweThV5Y9AMlqgCvowCvVtHezY3NHnd5fm2BKVGZgm32Opq/EVk
X-Gm-Gg: AYBFou3iS1urx5jPscn5zCB2HPF6WYtdHSKlnte6qN7dr2CBMup0/DEu6KE5vDiBleM
	i/Bih/sm4f7vkpWJcoNvdhtFUlAqI3URAbUfLwOs3/fJrVjwSCMe9e16IGeganryIbWg5dkjINE
	jatdJhTSunnM7swL64Jtbdrca0VVkfz5+Dw+8tLxtGMibeDpFKua+oMxTfglN7xW1EAHdhNLSWW
	CYQ9z2BHbGTZW/B874X02BsgiIkT/22nW6P5fZSV6mcuI21bVpHdnRFtJ91GLcgzgoc0t1AdyBF
	Inv/3f6E3zPBth/zgSdUxT2PCL1ExXXJ9GHzvjOa7tWIkC3cZoqnQj05lju55jqnm8bxDXvEiNy
	q5rJuWfHvoFVQNicmgHHXukP6itiEwpwxrNvYe0QR69tml5TVOV6EJJU+tg4LRg==
X-Received: by 2002:a05:7022:1217:b0:14f:5cd:f286 with SMTP id a92af1059eb24-1a6cf729c4fmr1036879c88.34.1793144770048;
        Tue, 27 Oct 2026 16:46:10 -0700 (PDT)
X-Received: by 2002:a05:7022:1217:b0:14f:5cd:f286 with SMTP id a92af1059eb24-1a6cf729c4fmr1036828c88.34.1793144769398;
        Tue, 27 Oct 2026 16:46:09 -0700 (PDT)
Received: from [10.134.68.191] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1a75d85f23dsm153319c88.11.2026.10.27.16.46.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2026 16:46:08 -0700 (PDT)
Message-ID: <b1312ee5-52d0-4294-a05a-f84bc334af74@oss.qualcomm.com>
Date: Tue, 27 Oct 2026 16:46:07 -0700
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 0/6] phy/media: Add generic MIPI C-PHY support to
 CSI-2 stack
To: Bryan O'Donoghue <bod@kernel.org>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <pFAaFSKH8thStYg6_Ew1gWdIvj5lbNBF36QKdamV1cU1Nc73wEZfM_KdQWL2NmB5fvaUpMPen7qMOzjHZ9ROIQ==@protonmail.internalid>
 <20261017-cphy_support-v1-0-8b0e1237ce95@oss.qualcomm.com>
 <141c5032-1915-4dac-bbcf-e697b762ae40@kernel.org>
Content-Language: en-US
From: Jigarkumar Zala <jigarkumar.zala@oss.qualcomm.com>
In-Reply-To: <141c5032-1915-4dac-bbcf-e697b762ae40@kernel.org>
X-Proofpoint-GUID: EQ3PSWxTnwr2YpNGXeAn2E52d6Qd2xEp
X-Authority-Analysis: v=2.4 cv=YuGa1IYX c=1 sm=1 tr=0 ts=6ae137c3 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=RNcpwd5BfBhkYgEZawkA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI3MDA5NSBTYWx0ZWRfX0DHFFuiOd5Yf
 NQ+9t4Ra1LRZuCghwLQ0BS8EfXvfyUjyTMAH8Zua997oo6Y7U9WjsUTdpSycE7PGEJrKmbEHQww
 bnETnlAn23zzKgbcRuydZsBv5cWrxLs=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI3MDA5NSBTYWx0ZWRfX5SYTz6GOx436
 L/DwYz/3E4aVfHIHcKy8H9WxjMTEJviJKHb9h1tN2Tipk42LuT5lRF+JPWMIpri+aU81Jwh0HQU
 YhakkNZ6qF36h/eausGyGY7hYJHcnud4DdyLFmbv5p7sQ0bt1Y9WPALYl4+Pmr2xXHUOdJxJO6J
 t9tNDMKXXkAzeiQ92405Bx3WqPqA2yeVqE5zqNREbcRgSmVvW6LLP//RCQh3yVJ8elfwwq+OejS
 FWjziV0wb74INwnGY48GepkifC50Gsfa+7CxMOdl7w2Xj8Lw6ElyMO/su97zyHBfRFRSWpOQYAD
 5ehtHc3u7VP8sDOc6jKz7vI/bYE7uxr1iRJPVmx2uQnyQ3xoj+jGoJzv00Fad54+q5i80mbpL07
 D8kZ3G7PvluQOARRWoqzqiabOqVr6Z3KczaI2uBwwnyPYHD1qm+vgoSH8h4NxyTOopGGTrjroPz
 Rb8msQKgEYqKDM019qA==
X-Proofpoint-ORIG-GUID: EQ3PSWxTnwr2YpNGXeAn2E52d6Qd2xEp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-27_06,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 impostorscore=0 phishscore=0 malwarescore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610270095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_164615_621690_36E40A32 
X-CRM114-Status: GOOD (  36.09  )
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
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgQnJ5YW4sCgpUaGFua3MgYSBsb3QgZm9yIHlvdXIgc3VnZ2VzdGlvbiByZWdhcmRpbmcgZmls
ZSBzdHJ1Y3R1cmluZyBhbmQgbmFtaW5nIApjb252ZW50aW9uLgpIb3dldmVyLCB3ZSB0aGluayB0
aGF0IGhhdmluZyB0aGUgc2VwYXJhdGUgZmlsZSB3aWxsIG1ha2UgaXQgbW9yZSAKZnVuY3Rpb25h
bGl0eSBvcmllbnRlZCBkaXN0aW5jdGlvbi4gSXQgaXMgZWFzaWVyIGZvciBhZGRpdGlvbiBhbmQg
Cm1haW50ZW5hbmNlLgpBbHNvLCB3ZSB3b3VsZCBsaWtlIHRvIHByb3Bvc2UgdG8gcmVtb3ZlIDNw
aCBmcm9tIHRoZSBmaWxlIG5hbWUgCmNvbnZlbnRpb24gYXMgdGhpcyBpcyBtaXNsZWFkaW5nIHRo
ZSBvcGVyYXRpb24uIERQSFkgaXMgMnBoLCB3aGVyZWFzIApDUEhZIGlzIDNwaC4KV2UgYXJlIHBy
b3Bvc2luZyB0byBoYXZlIGEgbmFtaW5nIGxpa2UgcGh5LXFjb20tbWlwaS1jc2kyLWRwaHkuYyBh
bmQgCnBoeS1xY29tLW1pcGktY3NpMi1jcGh5LmMgYXMgdGhlIG5hbWVzLCBEUEhZIGFuZCBDUEhZ
IGFyZSBzdWZmaWNpZW50IHRvIAp1bmRlcnN0YW5kIHRoZSAycGggb3IgM3BoIG9wZXJhdGlvbmFs
IG1vZGUuCgpLaW5kbHkgcHJvdmlkZSB5b3VyIHN1Z2dlc3Rpb24uCgpUaGFua3MsCkpaCgpPbiAx
MC8xNy8yMDI2IDQ6MzkgUE0sIEJyeWFuIE8nRG9ub2dodWUgd3JvdGU6Cj4gT24gMTcvMTAvMjAy
NiAxODoxMywgTmloYWwgS3VtYXIgR3VwdGEgd3JvdGU6Cj4+IEdlb3JnZSBwb3N0ZWQgYSBDLVBI
WSBzZXJpZXMgWzFdIHdoaWNoIHdlIGFyZSBjdXJyZW50bHkgcmV2aWV3aW5nLgo+PiBBcyBkaXNj
dXNzZWQgd2l0aCBCcnlhbiwgdGhpcyBzZXJpZXMgc2hhcmVzIG91ciBpbmRlcGVuZGVudAo+PiBp
bXBsZW1lbnRhdGlvbiBzbyB0aGUgYXBwcm9hY2hlcyBjYW4gYmUgY29tcGFyZWQuCj4+Cj4+IFR3
byBhc3BlY3RzIGNvdmVyZWQgaGVyZSBhcmUgbm90IGluIFsxXToKPj4KPj4gLSBTZXR0bGUgY291
bnQgY2FsY3VsYXRpb24gZGVyaXZlZCBmcm9tIHNlbnNvci1yZXBvcnRlZCBUX1BSRVBBUkUgYW5k
Cj4+IMKgwqAgVF9QUkVBTUJMRSB0aW1pbmcgdmlhIGdldF9tYnVzX2NvbmZpZygpLiBbMV0gbGVm
dCB0aGlzIGFzIGFuIG9wZW4KPj4gwqDCoCBxdWVzdGlvbi4KPj4KPj4gLSBEYXRhIHJhdGUgYmFz
ZWQgcmVnaXN0ZXIgc2VxdWVuY2Ugc2VsZWN0aW9uIHVzaW5nIGVmZmVjdGl2ZSBiaXQKPj4gwqDC
oCByYXRlIChsaW5rX2ZyZXEgKiAzMiAvIDcpLiBbMV0gbm90ZWQgZG93bnN0cmVhbSBkb2VzIHRo
aXMgYnV0Cj4+IMKgwqAgZGVmZXJyZWQgaXQ7IHRoaXMgc2VyaWVzIGltcGxlbWVudHMgaXQuCj4+
Cj4+IE1JUEkgQ1NJLTIgb3BlcmF0ZXMgb3ZlciB0d28gcGh5c2ljYWwgbGF5ZXIgdmFyaWFudHMu
IEQtUEhZIHVzZXMgYQo+PiBkZWRpY2F0ZWQgZGlmZmVyZW50aWFsIGNsb2NrIGxhbmUgd2l0aCB1
cCB0byBmb3VyIGRhdGEgbGFuZXMuIEMtUEhZCj4+IGVuY29kZXMgdGhlIGNsb2NrIHdpdGhpbiB0
aGUgZGF0YSBzdHJlYW0gYWNyb3NzIHVwIHRvIHRocmVlIHdpcmUKPj4gdHJpb3MsIGVsaW1pbmF0
aW5nIHRoZSBkZWRpY2F0ZWQgY2xvY2sgbGFuZS4KPj4KPj4gUGF0Y2ggMSBleHRlbmRzIHRoZSBn
ZW5lcmljIFBIWSBmcmFtZXdvcmsgd2l0aCBQSFlfTU9ERV9NSVBJX0NQSFkKPj4gYW5kIHN0cnVj
dCBwaHlfY29uZmlndXJlX29wdHNfbWlwaV9jcGh5Lgo+Pgo+PiBQYXRjaCAyIGFkZHMgdF9wcmVw
YXJlX25zIGFuZCB0X3ByZWFtYmxlX25zIGZpZWxkcyB0byB0aGUgQ1NJLTIKPj4gbWVkaWEgYnVz
IGNvbmZpZ3VyYXRpb24gYW5kIGV4dGVuZHMgQ0FNU1MgdG8gZm9yd2FyZCB0aGVtIHRvIHRoZSBQ
SFkKPj4gcHJvdmlkZXIgZm9yIHNldHRsZSBjb3VudCBjYWxjdWxhdGlvbi4gU2Vuc29yIGRyaXZl
cnMgbXVzdCBpbXBsZW1lbnQKPj4gZ2V0X21idXNfY29uZmlnKCkgYW5kIHJldHVybiBub24temVy
byB2YWx1ZXMgaW4gbmFub3NlY29uZHM7IHN0cmVhbS1vbgo+PiByZXR1cm5zIC1FSU5WQUwgb3Ro
ZXJ3aXNlLiBUaGUgc3RyaWN0bmVzcyBpcyBkZWxpYmVyYXRlOiBDLVBIWSBzZXR0bGUKPj4gdGlt
aW5nIGlzIHN5bWJvbC1yYXRlLXJhbmdlIHNwZWNpZmljIGFuZCBubyBzYWZlIHZhbHVlIGNhbiBi
ZSBkZXJpdmVkCj4+IGZyb20gbGluayBmcmVxdWVuY3kgYWxvbmUuIEEgY29uc2VydmF0aXZlIGZh
bGxiYWNrIGNvdWxkIGJlIGFkZGVkIGlmCj4+IHJldmlld2VycyBwcmVmZXIuCj4+Cj4+IFBhdGNo
ZXMgMy02IGV4dGVuZCB0aGUgUXVhbGNvbW0gQ1NJUEhZIGRyaXZlcjogcmVmYWN0b3IgRC1QSFkK
Pj4gcmVnaXN0ZXIgc3RvcmFnZSB0byBhY2NvbW1vZGF0ZSBDLVBIWSwgYWNjZXB0IEMtUEhZIG1v
ZGUgd2l0aAo+PiBtdWx0aXBsZSBkYXRhIHJhdGUgdGFibGUgc2VsZWN0aW9uLCBjb21wdXRlIHNl
dHRsZSBjb3VudCwgYW5kIGFkZAo+PiBsYW5lIHBvd2VyIG1hc2sgc3VwcG9ydCBmb3IgQy1QSFkg
dHJpb3MuCj4+Cj4+IEMtUEhZIGVuY29kZXMgMTYgYml0cyBwZXIgNyBzeW1ib2xzLCBzbyB0aGUg
ZWZmZWN0aXZlIGJpdCByYXRlIGlzOgo+Pgo+PiDCoMKgIGJpdF9yYXRlID0gbGlua19mcmVxICog
MiAqIDE2IC8gNyA9IGxpbmtfZnJlcSAqIDMyIC8gNwo+Pgo+PiB3aGVyZSBsaW5rX2ZyZXEgaXMg
c3ltYm9sX3JhdGUgLyAyIGFzIHJlcG9ydGVkIGJ5IHRoZSBzZW5zb3IgdmlhCj4+IGdldF9tYnVz
X2NvbmZpZygpLiBUaGUgcmF0ZS10YWJsZSBlbnRyeSB3aG9zZSBiYW5kd2lkdGggZmlyc3QgbWVl
dHMKPj4gb3IgZXhjZWVkcyBiaXRfcmF0ZSBpcyBzZWxlY3RlZC4KPj4KPj4gVGhlIHNldHRsZSBj
b3VudCBkZWZpbmVzIGhvdyBtYW55IHRpbWVyIGNsb2NrIGN5Y2xlcyB0aGUgQ1NJUEhZCj4+IHJl
Y2VpdmVyIHdhaXRzIGJlZm9yZSBzY2FubmluZyBmb3IgQy1QSFkgc3luYy4gSXQgaXMgY29tcHV0
ZWQgZnJvbQo+PiB0aGUgc2Vuc29yJ3MgVF9QUkVQQVJFIGFuZCBUX1BSRUFNQkxFIHRpbWluZy4g
VGhlIC8zIGZhY3RvciByZWZsZWN0cwo+PiB0aGF0IEMtUEhZIGRpc3RyaWJ1dGVzIHRoZSBwcmVh
bWJsZSBzZXF1ZW5jZSBhY3Jvc3MgdGhyZWUgdHJpb3M6Cj4+Cj4+IMKgwqAgc2V0dGxlX2NudCA9
ICh0X3ByZXBhcmVfbnMgKyB0X3ByZWFtYmxlX25zIC8gMykgKiB0aW1lcl9jbGtfcmF0ZSAvIAo+
PiAxZTkKPj4KPj4gRC1QSFkgc2V0dGxlIGNvdW50IGlzIHVuY2hhbmdlZCBmcm9tIGJlZm9yZSB0
aGlzIHNlcmllcy4KPj4KPj4gWzFdIAo+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAy
NjEwMTYteDFlLWNwaHktcmZjLXYzLTAtNDBhMzQ2YTcyMTUzQGdtYWlsLmNvbS8KPj4KPj4gU2ln
bmVkLW9mZi1ieTogTmloYWwgS3VtYXIgR3VwdGEgPG5paGFsLmd1cHRhQG9zcy5xdWFsY29tbS5j
b20+Cj4+IC0tLQo+PiBOaWhhbCBLdW1hciBHdXB0YSAoNik6Cj4+IMKgwqDCoMKgwqDCoCBwaHk6
IGNvcmU6IEFkZCBNSVBJIEMtUEhZIGNvbmZpZ3VyYXRpb25zCj4+IMKgwqDCoMKgwqDCoCBtZWRp
YTogcWNvbTogY2Ftc3M6IEFkZCBDLVBIWSB0aW1pbmcgZmllbGRzIGFuZCBnZXQgY29uZmlnIAo+
PiBmcm9tIHNlbnNvcgo+PiDCoMKgwqDCoMKgwqAgcGh5OiBxY29tOiBtaXBpLWNzaTI6IFNwbGl0
IEQtUEhZIHJlZ2lzdGVyIHNldHRpbmdzCj4+IMKgwqDCoMKgwqDCoCBwaHk6IHFjb206IG1pcGkt
Y3NpMjogQWNjZXB0IEMtUEhZIG1vZGUgYW5kIGFkZCByZWdpc3RlciBzZXF1ZW5jZQo+PiDCoMKg
wqDCoMKgwqAgcGh5OiBxY29tOiBtaXBpLWNzaTI6IEFkZCBDLVBIWSBzZXR0bGUgY2FsY3VsYXRp
b24KPj4gwqDCoMKgwqDCoMKgIHBoeTogcWNvbTogbWlwaS1jc2kyOiBBZGQgbGFuZSBtYXNrIGNh
bGN1bGF0aW9uIGZvciBDLVBIWQo+Pgo+PiDCoCBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20v
Y2Ftc3MvY2Ftc3MtY3NpcGh5LmPCoMKgIHzCoCA5MCArKysrKysrKystLS0KPj4gwqAgZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLWNzaXBoeS5owqDCoCB8wqDCoCAyICsK
Pj4gwqAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmPCoMKgwqDCoMKg
wqDCoMKgwqAgfMKgwqAgOCArLQo+PiDCoCBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1t
aXBpLWNzaTItM3BoLWRwaHkuYyB8IDE1OSAKPj4gKysrKysrKysrKysrKysrKystLS0tCj4KPiBT
byBvbiB0aGluZyBJIG5vdGljZSBhYm91dCB0aGlzIHNlcmllcyBhbmQgbGlrZSBpcyB0aGF0IHRo
ZXJlJ3MgYSAKPiBzbWFsbCBjaGFuZ2UgdG8gdGhlIGV4aXN0aW5nIDNwaC1kcGh5LmMKPgo+IC0g
U2luY2UgaXQgc3VwcG9ydHMgM3BoLWNwaHkgdGhlIGZpbGUgc2hvdWxkIGJlIHJlbmFtZWQKPiDC
oCAzcGgtY3BoeS1kcGh5LmMgKG9yIHNvbWV0aGluZykKPiAtIEkgbGlrZSB0aGUgcHJvZ3Jlc3Np
dmUgbmF0dXJlIG9mIGhlIGNoYW5nZXMgaW4gdGhpcyBzZXJpZXMKPiDCoCBhcyBzdHJ1Y3R1cmFs
bHkgdGhlIHJpZ2h0IHdheSB0byBhZGQgc3R1ZmYgaW4uIFNtYWxsIGRpZ2VzdGFibGUKPiDCoCBj
b21taXRzCj4gLSBJIHRoaW5rIHRoZSBtaXNzaW5nIHBpZWNlIGhlcmUgaXMgZGF0YV9sYW5lc1td
IGFuZCBsYW5lX3BvbGFyaXRpZXNbXQo+IMKgIHBlciB0aGUgb3RoZXIgc2VyaWVzIGZyb20gUWNv
bQo+IC0gQW5vdGhlciB0aGluZyBpcyB0aGUgb3RoZXIgc2VyaWVzIGZyb20gQW51c2hhIGhhcwo+
IMKgIGEgbW9yZSBhZHZhbmNlZCBtaXBpX29wcyBkYXRhLXN0cnVjdHVyZSBmb3IgQ1BIWS4KPgo+
IEJhc2ljYWxseSBJIGxpa2UgdGhlIGFwcHJvYWNoIHRha2VuIGluIHRoaXMgc2VyaWVzIGZvciBh
IHNtYWxsZXIgCj4gY2hhbmdlIHRvIHRoZSBwaHktcWNvbS1taXBpLWNzaTItM3BoLWRwaHkuYyBm
aWxlLgo+Cj4gSSdkIGxpa2UgdGhlIGJlc3Qgb2YgYm90aCBzZXJpZXMgLSBJIHRoaW5rIHRoZXJl
IGlzIGFsb3QgdG8gcmVzb2x2ZSBvbiAKPiBsYW5lcywgZGF0YS1sYW5lcyBhbmQgbGFuZS1wb2xh
cml0aWVzIGluIHRoZSBvdGhlciBzZXJpZXMgYW5kIGxvb2tpbmcgCj4gYXQgdGhpcyBzZXJpZXMs
IGl0IHNlZW1zIHRvIG1lIHdlIGRvbid0IG5lZWQgYSBzZXBhcmF0ZSAKPiBwaHktcWNvbS1taXBp
LWNzaTItM3BoLWNwaHkuYywgSSB0aGluayBLb25yYWQgb2JzZXJ2ZWQgaW4gR2VvcmdlJ3MgCj4g
c2VyaWVzIHRoYXQgcmVhbGx5IHRoZSBmaWxlIGRlYWxzIHdpdGggMy1waGFzZSBQSFlzIGFuZCB0
aGF0IHNlZW1zIAo+IHRydWUgZW5vdWdoLgo+Cj4gUGxlYXNlIHdvcmsgb3V0IGJldHdlZW4geW91
cnNlbGYgYW5kIEFudXNoYSB3aGF0J3MgbmV4dC4KPgo+IElmIHBvc3NpYmxlIEkgd291bGQgcHJl
ZmVyIHRvIGNvbnRhaW4gM3BoIENQSFkgYW5kIERQSFkgdG8gb25lIGZpbGUgYXMgCj4gaXMgZG9u
ZSBoZXJlIC0gYXQgdGhlIHNhbWUgdGltZSB0aGUgZGVmaW5pdGlvbiBvZiBDUEhZIG9wcyBhbmQg
bGFuZSAKPiBtYXBwaW5ncyBpcyBjbG9zZXIgdG8gdGhlIHNwZWMgaW4gdGhlIG90aGVyIHNlcmll
cy4KPgo+IEkgdGhpbmsgZWl0aGVyIHlvdSBzaG91bGQgdGFrZSBBbnVzaGEncyBzdHJ1Y3RzIGFu
ZCBsYW5lIGRlZmluaXRpb25zIAo+IG9yIEFudXNoYSBzaG91bGQgdGFrZSB5b3VyIGFwcHJvYWNo
IHRvIG1pbmltYWwgY2hhbmdlIHRvIHRoZSAKPiBwaHktcWNvbS1taXBpLWNzaTItM3BoLWRwaHku
YyByZW5hbWluZyBpdC4KPgo+IE9uZSBvZiB5b3UgbmVlZHMgdG8gcGljayB1cCB0aGUgcGF0Y2hl
cyBmcm9tIHRoZSBvdGhlciBvbmUuCj4KPiBHZW9yZ2UgY2FuIGxhbmQgaGlzIHN0dWZmIG9uIHRv
cCB0aGVuLgo+PiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1taXBpLWNzaTItY29yZS5j
wqDCoMKgwqAgfMKgIDUxICsrKysrLS0KPj4gwqAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFj
b20tbWlwaS1jc2kyLmjCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDI1ICsrKy0KPj4gwqAgaW5jbHVk
ZS9saW51eC9waHkvcGh5LmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfMKgIDQ3ICsrKysrKwo+PiDCoCBpbmNsdWRlL21lZGlhL3Y0bDItbWVk
aWFidXMuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAy
ICsKPj4gwqAgOCBmaWxlcyBjaGFuZ2VkLCAzMTUgaW5zZXJ0aW9ucygrKSwgNjkgZGVsZXRpb25z
KC0pCj4+IC0tLQo+PiBiYXNlLWNvbW1pdDogMmVmYjdhMTFmMWFhNGQyZGMyODVmZTI2ODBjY2Ey
MmNiOWY3MmY2NAo+PiBjaGFuZ2UtaWQ6IDIwMjYxMDE3LWNwaHlfc3VwcG9ydC0yY2U0ZDY1NmU2
MzEKPj4KPj4gQmVzdCByZWdhcmRzLAo+PiAtLSAKPj4gTmloYWwgS3VtYXIgR3VwdGEgPG5paGFs
Lmd1cHRhQG9zcy5xdWFsY29tbS5jb20+Cj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
